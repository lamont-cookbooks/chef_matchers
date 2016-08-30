
class Chef
  class Resource
    # exactly like current_value but gives you back the provider
    def current_provider
      provider = provider_for_action(Array(action).first)
      if provider.whyrun_mode? && !provider.whyrun_supported?
        raise "Cannot retrieve #{self.class.current_resource} in why-run mode: #{provider} does not support why-run"
      end
      provider.load_current_resource
      provider
    end
  end
end
