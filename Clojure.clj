booleans: true, false
strings: "foo bar"
characters: \c, \tab
symbols: name
keywords: :key
integers: 123
floating point numbers: 3.14
lists: (a b 42)
vectors: [a b 42]
maps: {:a 1, "foo" :bar, [1 2 3] four}
sets: #{a b [1 2 3]}
nil: nil (a null-like value)


(defn -main
  [& args] 
  (println "Hello, World!"))

(def a 42)

(+ a 8)

(even? a)

(defn foo(n) (rem n 10))

(foo a)

(doc rem)
(source rem)

(->> (range 10)
     (map inc)
     (filter even?))



