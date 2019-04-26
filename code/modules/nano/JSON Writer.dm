
/json_writer/proc/WriteObject(list/L, cached_data = null)
	. = "{"
	var/i = 1
	for(var/k in L)
		var/val = L[k]
		. += {"\"[k]\":[write(val)]"}
		if(i++ < L.len)
			. += ","
	if(cached_data)
		. = copytext(., 1, lentext(.)) + ",\"cached\":[cached_data]}"
	. += "}"

/json_writer/proc/write(val)
	if(isnum(val))
		return num2text(val, 100)
	else if(isnull(val))
		return "null"
	else if(istype(val, /list))
		if(is_associative(val))
			return WriteObject(val)
		else
			return write_array(val)
	else
		. += write_string("[val]")

/json_writer/proc/write_array(list/L)
	. = "\["
	for(var/i = 1 to L.len)
		. += write(L[i])
		if(i < L.len)
			. += ","
	. += "]"

/json_writer/proc/write_string(txt)
	var/static/list/json_escape = list("\\", "\"", "'", "\n", "\t")
	for(var/targ in json_escape)
		var/start = 1
		while(start <= lentext(txt))
			var/i = findtext(txt, targ, start)
			if(!i)
				break
			if(targ == "\t")
				txt = copytext(txt, 1, i) + "\\t" + copytext(txt, i+1)
				start = i + 1
			else if(targ == "\n")
				txt = copytext(txt, 1, i) + "\\n" + copytext(txt, i+1)
				start = i + 1
			else if(targ == "'")
				txt = copytext(txt, 1, i) + "`" + copytext(txt, i+1) // apostrophies fuck shit up...
				start = i + 1
			else // \ and "
				txt = copytext(txt, 1, i) + "\\" + copytext(txt, i)
				start = i + 2 //skip new \ and next (quote or slash) characters

	return {""[txt]""}

/json_writer/proc/is_associative(list/L)
	for(var/key in L)
		// if the key is a list that means it's actually an array of lists (stupid Byond...)
		if(!isnum(key) && !istype(key, /list))
			return TRUE
