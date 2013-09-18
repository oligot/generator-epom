note
        description: "Persistent class name of <%= _.humanize(className) %>"
	author: "generator-epom"

class
	<%= className %>_CLASS_NAME

feature -- Constants

	persistent_class_name: STRING = "<%= className %>"
                        -- Persistent class name

end
