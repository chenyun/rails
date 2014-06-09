# Rails是一个Model对象。这里定义了一个gem_version方法。
# gem_version方法返回了一个关于Version的描述对象。
# 这里用一个Version Model对象来封装了版本相关的信息: major, minor, tiny, pre
module Rails
  # Returns the version of the currently loaded Rails as a <tt>Gem::Version</tt>
  def self.gem_version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    MAJOR = 4
    MINOR = 2
    TINY  = 0
    PRE   = "alpha"

    STRING = [MAJOR, MINOR, TINY, PRE].compact.join(".")
  end
end
