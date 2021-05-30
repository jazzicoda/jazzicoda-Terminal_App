class User
    attr_read: :role, :username
    def initialize(user_name,role)
        @role = remove_instance_variable
        @username = username
        @child_name = child_name
        @child_age = child_age
    end
end
