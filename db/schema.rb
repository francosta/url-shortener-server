ActiveRecord::Schema.define(version: 2019_07_31_144531) do

  create_table "urls", force: :cascade do |t|
    t.string "original"
    t.string "shortened"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
