# MarkdownTable

This library generate it easy to create Markdown table like CSV library.

## Installation

Add this line to your application's Gemfile:

```
gem 'markdown_table'
```

And then execute:

```
$ bundle
```

## Usage

```ruby:
MarkdownTable.generate(header: %w[header1 header2 header3 header4]) do |table|
    table << %w[row1_1 row1_2 row1_3 row1_4]
    table << %w[row2_1 row2_2 row2_3 row2_4]
end
```

Output:

| header1 | header2 | header3 | header4 |
| ------- | ------- | ------- | ------- |
| row1_1  | row1_2  | row1_3  | row1_4  |
| row2_1  | row2_2  | row2_3  | row2_4  |

```
|header1|header2|header3|header4|
|-|-|-|-|
|row1_1|row1_2|row1_3|row1_4|
|row2_1|row2_2|row2_3|row2_4|
```

### Set align option

```ruby:
MarkdownTable.generate(header: %w[header1 header2 header3 header4], align: %w[normal center left right]) do |table|
    table << %w[row1_1 row1_2 row1_3 row1_4]
    table << %w[row2_1 row2_2 row2_3 row2_4]
end
```

Output:

| header1 | header2 | header3 | header4 |
| ------- | :-----: | :------ | ------: |
| row1_1  | row1_2  | row1_3  |  row1_4 |
| row2_1  | row2_2  | row2_3  |  row2_4 |

```
|header1|header2|header3|header4|
|-|:-:|:-|-:|
|row1_1|row1_2|row1_3|row1_4|
|row2_1|row2_2|row2_3|row2_4|
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kouppu/markdown_table. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/kouppu/markdown_table/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MarkdownTable project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kouppu/markdown_table/blob/master/CODE_OF_CONDUCT.md).
