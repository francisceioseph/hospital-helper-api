json.id               role.id
json.role_name        role.role_name
json.role_type        role.role_type
json.role_description role.role_description if role.role_description

if (role.permissions)
    json.permissions role.permissions do | permission |
        json.id          permission.id
        json.resource    permission.resource_name
        json.action_type permission.action_type
    end
end

