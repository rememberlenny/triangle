module Facebookable
  extend ActiveSupport::Concern

  def needs_facebook?
    needs_facebook && services.where("provider = 'Facebook'").count < 1
  end

  def should_flag?
    condition # get a score somehow

    if condition
      self.needs_facebook = true
      self.save!
    end
  end

  def active_for_authentication?
    super && !needs_facebook? && !should_flag?()
  end

  def inactive_message
    needs_facebook? ? "Please sign in with Facebook." : super
  end
end
