# Filterable
Module to filter active record relations easily

## Usage
```ruby
# app/models/concerns/filterable.rb
# First move the class to your concerns
module Filterable
  # ...
end

```

```ruby
class Contact
  include Filterable

  scope :by_organization, -> (organization_id) {
    where(organization_id: organization_id)
  }

  scope :by_user, -> (user_id) {
    where(user_id: user_id)
  }
end
```

```ruby
Contact.filter(by_organization: params[:organization_id,
               by_user:         params[:user_id])
```

