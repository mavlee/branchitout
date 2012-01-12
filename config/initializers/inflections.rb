# Be sure to restart your server when you modify this file.
ActiveSupport::Inflector.inflections do |inflect|
   inflect.plural /^(stor)y$/i, '\1ies'
   inflect.singular /^(stor)ies/i, '\1y'

   inflect.plural /^(branch)$/i, '\1es'
   inflect.singular /^(branch)es/i, '\1'

#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
end
