(ns fizz-buzz.core
  (:gen-class))

(defn fb_test [x] 
  (cond
    (= (mod x 15) 0) "fizzbuzz"
    (= (mod x 3) 0) "fizz"
    (= (mod x 5) 0) "buzz"
    :else x))

(defn fb_print [x] (println (fb_test x)))

(defn -main
  [& args]
  (dotimes [n 100] (fb_print (+ n 1))))
