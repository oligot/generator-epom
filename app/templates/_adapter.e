note
        description: "Adapter of <%= _.humanize(className) %>"
	author: "generator-epom"

class
	<%= className %>_ADAPTER

inherit
	ECLI_ADAPTER_READ_EXISTS_SKELETON [<%= className %>]
		redefine
			last_pid
		end

	ECLI_ADAPTER_SINK_SKELETON [<%= className %>]
		undefine
			can_read, read
		redefine
			last_pid,
			on_adapter_connected,
			on_adapter_disconnect
		end

	<%= className %>_CLASS_NAME

create
	make

feature {PO_ADAPTER, PO_CURSOR, PO_REFERENCE, PO_PERSISTENT, PO_REFERENCE_ACCESS} -- Framework - Access

	last_pid: detachable <%= className %>_PID

feature {NONE} -- Framework - Access

	read_cursor: detachable <%= className %>_READ

feature -- Basic operations

	read_by_value (a_value: STRING)
			-- Read by `a_value'.
		require
			datastore_connected: datastore.is_connected
		do
		end

feature {NONE} -- Framework - Basic operations

	init_parameters_for_read (a_pid: like last_pid)
			-- <Precursor>
		do
		end

	on_adapter_connected
		do
		end

	on_adapter_disconnect
		do
		end

feature {NONE} -- Framework - Factory

	create_object_from_read_cursor (a_cursor: like read_cursor; a_pid: like last_pid)
			-- <Precursor>
		do
			create_object_from_row (a_cursor.item)
		end

	fill_object_from_read_cursor (a_cursor: like read_cursor; an_object: like last_object)
			-- <Precursor>
		do
			fill_object_from_row (a_cursor.item, an_object)
		end

	create_pid_from_object (an_object: attached like object_anchor)
			-- <Precursor>
		do
		end

feature {NONE} -- Implementation

	create_object_from_row (a_row: ROW_<%= className %>)
    		-- Create object from `a_row' and just ensure invariant.
		do
		end

	fill_object_from_row (a_row: ROW_<%= className %>; an_object: like last_object)
			-- Fill `an_object' using `a_row'.
		do
		end

        extend_cursor_from_row_<%= _.underscored(className) %> (row: ROW_<%= className %>)
		do
		end

end
