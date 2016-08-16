# Understanding the model for this discussion
Authors have many Titles through Authorships
Publishers have many Titles-- Titles belong to Publishers

```ruby
  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authorships", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "title_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_authorships_on_author_id", using: :btree
    t.index ["title_id"], name: "index_authorships_on_title_id", using: :btree
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "name"
    t.string   "genre"
    t.datetime "published_at"
    t.integer  "publisher_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["publisher_id"], name: "index_titles_on_publisher_id", using: :btree
  end
```
