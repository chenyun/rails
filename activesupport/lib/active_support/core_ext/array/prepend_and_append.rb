# 两个alias methods:  append 和 prepend. 重要的是human way of thinking
# 英文母语的人对append, prepend比较了解啊
# 其实对我来讲, :<< 非常的直观
# alias_method: 把类的对象方法进行alias, 参数一是目标方法名，参数二是原方法名，两者都是symbol
class Array
  # The human way of thinking about adding stuff to the end of a list is with append.
  alias_method :append,  :<<

  # The human way of thinking about adding stuff to the beginning of a list is with prepend.
  alias_method :prepend, :unshift
end
