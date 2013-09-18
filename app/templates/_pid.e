note
        description: "Persistent identifier of <%= _.humanize(className) %>"
	author: "generator-epom"

class
	<%= className %>_PID

inherit
	PO_PID

	<%= className %>_CLASS_NAME
		undefine
			is_equal
		end

create
	make

feature {NONE} -- Initialization

	make (a_value: STRING)
			-- Create from `a_value'.
		do
			value := a_value
		ensure
			value_set: value = a_value
		end

feature -- Access

	value: STRING
			-- Value

feature -- Conversion

	as_string: STRING
		local
			s: STRING
		do
			s := value.out
			create Result.make (persistent_class_name.count + s.count)
			Result.append_string (persistent_class_name)
			Result.append_character ('#')
			Result.append_string (s)
		end

end
