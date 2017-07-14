json.extract! daily_record, :id, :systolic_bp, :diastolic_bp, :heart_rate, :notes, :care_receiver_id, :user_id, :created_at, :updated_at
json.url daily_record_url(daily_record, format: :json)
