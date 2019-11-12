load 'wrapper.rb'

describe Wrapper do
    it "doesn't crash with an empty string" do
        calculator = Wrapper.wrap('', 3)
        expect(calculator).to eq("")
    end

    it "returns nil when a block of letters is larger than the column size" do
        calculator = Wrapper.wrap("s ttt r", 2)
        expect(calculator).to eq(nil)
    end

    it "replaces strings in a string with column size of 1" do
        calculator = Wrapper.wrap("s t r ",1)
        expect(calculator).to eq("s\nt\nr\n")
    end

    it "properly scrubs every space for a column split" do
        calculator = Wrapper.wrap("ssss sss  ss ss s sss", 4)
        expect(calculator).to eq("ssss\nsss \nss\nss s\nsss")
    end

    it "preserves spaces when the column size is large enough" do
        calculator = Wrapper.wrap("s s ttt rr  ", 3)
        expect(calculator).to eq("s s\nttt\nrr \n")
    end
end
