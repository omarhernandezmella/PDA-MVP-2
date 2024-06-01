# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to avoid duplication issues
User.destroy_all
KinesiologistDetail.destroy_all
PersonalInformation.destroy_all
PersonalTrainerDetail.destroy_all
Training.destroy_all
WarmUp.destroy_all

# Create a User
user = User.create!(
  username: 'john_doe',
  email: 'john.doe@example.com',
  password: 'secure1234'  # Note: In a real app, ensure passwords are handled securely!
)

# Create Personal Information for User
PersonalInformation.create!(
  weight: 75,
  height: 180,
  gender: 'Male',
  user: user
)

# Create Training Sessions
training = Training.create!(
  exercise: 'Pull-ups',
  classification: 'Strength',  # Assuming you have this attribute based on previous info
  day: Date.today,
  user: user
)

# Create Warm-up for Training
WarmUp.create!(
  exercise: 'Arm circles',
  training: training
)

# Create Personal Trainer Details
PersonalTrainerDetail.create!(
  specialty: 'Strength Training',
  profession: 'Certified Gym Trainer',
  user: user
)

# Create Kinesiologist Details
KinesiologistDetail.create!(
  specialty: 'Sports Injury Recovery',
  description: 'Specializes in rehabilitation after sports injuries.',
  user: user
)

puts "Seed data successfully created!"
