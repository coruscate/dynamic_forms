class DynamicFormsGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory "app/models"
      m.template "models/form.rb", "app/models/form.rb"
      m.template "models/form_field.rb", "app/models/form_field.rb"
      m.template "models/form_field_option.rb", "app/models/form_field_option.rb"
      m.template "models/form_submission.rb", "app/models/form_submission.rb"
      
      m.directory "app/models/form_field"
      m.template "models/form_field/check_box.rb", "app/models/form_field/check_box.rb"
      m.template "models/form_field/check_box_group.rb", "app/models/form_field/check_box_group.rb"
      m.template "models/form_field/select.rb", "app/models/form_field/select.rb"
      m.template "models/form_field/text_area.rb", "app/models/form_field/text_area.rb"
      m.template "models/form_field/text_field.rb", "app/models/form_field/text_field.rb"
      
      m.migration_template 'migrations/create_dynamic_forms.rb', 'db/migrate', :migration_file_name => "create_dynamic_forms"
    end
  end
  
end