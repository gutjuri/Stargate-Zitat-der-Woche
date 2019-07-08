FROM ruby:2.5

COPY sgquote.rb /

CMD ["ruby", "sgquote.rb"]
