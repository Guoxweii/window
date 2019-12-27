redis_config = YAML.safe_load(Rails.root.join("config/redis.yml").read)
redis_options = redis_config[Rails.env].symbolize_keys

Sidekiq.configure_server do |config|
  config.redis = redis_options

  # config.on(:startup) do
    # Sidekiq::Cron::Job.destroy_all!
    # Sidekiq::Cron::Job.load_from_hash YAML.safe_load(Rails.root.join("config/schedule.yml").read)
  # end
end

Sidekiq.configure_client do |config|
  config.redis = redis_options
end
