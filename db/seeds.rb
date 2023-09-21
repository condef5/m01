# db/seeds.rb

Section.destroy_all

videos = [
  "https://youtu.be/Xjzb_-26m2o",
  "https://youtu.be/qsOnJQFWGUk",
  "https://youtu.be/x8_AD1Tyx98",
  "https://youtu.be/1oW8HoF0SxU",
  "https://youtu.be/aLR_bDd3SVc",
]

# add four more random topics
topics = [
  "Super Large Comic Sans Topic Space Delta Loop",
  "Cowboy Space Loop Comic Sans Topic Space Delta Spoken",
  "A colossal ship sails through the stormy ocean waves.",
  "The vast desert stretches endlessly under the scorching sun.",
  "Majestic mountains rise high, touching the azure sky.",
  "Enormous whales breach the surface in a majestic display.",
  "Beneath the tranquil moonlight, a mesmerizing waterfall cascades down the lush.",
  "Emerald mountainside, creating an enchanting symphony of nature's grandeur.",
]


# Create 30 top-level sections
35.times do |i|
  top_section = Section.create(title: "Section #{i * 10 + 1}")

  section_topics = [10, 15, 20].sample
  section_topics.times do |k|
    top_section.topics.create(
      title: topics.sample,
      video: [true, false].sample ? videos.sample : nil
    )
  end

  # Generate a random number of sub-sections between 0, 5, and 10
  num_sub_sections = [0, 1, 4].sample

  num_sub_sections.times do |j|
    sub_section = top_section.sub_sections.create(title: "Sub-Section #{j + 1}")

    # Create random topics for each sub-section
    num_topics = [3, 5, 7].sample
    num_topics.times do |k|
      sub_section.topics.create(
        title: topics.sample + " #{j + 1}.#{k + 1}",
        video: [true, false].sample ? videos.sample : nil
      )
    end
  end
end

# Output a message
puts "Seeds created successfully."
