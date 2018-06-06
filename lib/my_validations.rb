module ActiveRecord
  module Validations
    module ClassMethods
 
      def validates_email_format(value)
        validates_format_of value,
                            :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                            :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                            :message => "Formato de email incorreto"
      end
    end
  end
end