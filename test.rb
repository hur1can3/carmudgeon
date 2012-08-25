require 'benchmark'

Benchmark.bm do |b|
  b.report("no throw") do
    100000.times do
      begin
        1+1
      rescue

      end
    end
  end
  b.report("throw") do
    100000.times do
      begin
        1 + 1
        raise "FAIL"
      rescue

      end
    end
  end
end
