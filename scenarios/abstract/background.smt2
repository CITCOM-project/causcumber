(declare-fun trace_probs () Real)
(declare-fun |trace_probs >= 0| () Bool)
(declare-fun trace_probs_prime () Real)
(declare-fun |trace_probs_prime >= 0| () Bool)
(declare-fun asymp_prob () Real)
(declare-fun |asymp_prob <= 1| () Bool)
(declare-fun asymp_prob_prime () Real)
(declare-fun |asymp_prob_prime <= 1| () Bool)
(declare-fun n_days () Int)
(declare-fun |n_days <= 365| () Bool)
(declare-fun n_days_prime () Int)
(declare-fun |n_days_prime <= 365| () Bool)
(declare-fun symp_prob () Real)
(declare-fun |Or(Or(False, symp_prob == 1/2), symp_prob == 1)| () Bool)
(declare-fun symp_prob_prime () Real)
(declare-fun |Or(Or(False, symp_prob_prime == 1/2), symp_prob_prime == 1)|
             ()
             Bool)
(declare-fun symp_quar_prob () Real)
(declare-fun |symp_quar_prob <= 1| () Bool)
(declare-fun symp_quar_prob_prime () Real)
(declare-fun |symp_quar_prob_prime <= 1| () Bool)
(declare-fun asymp_quar_prob () Real)
(declare-fun |Or(Or(False, asymp_quar_prob == 1/2), asymp_quar_prob == 1)|
             ()
             Bool)
(declare-fun asymp_quar_prob_prime () Real)
(declare-fun |Or(Or(False, asymp_quar_prob_prime == 1/2),
   asymp_quar_prob_prime == 1)|
             ()
             Bool)
(declare-fun |asymp_quar_prob <= 1| () Bool)
(declare-fun |asymp_quar_prob_prime <= 1| () Bool)
(declare-fun |Or(Or(False, n_days == 60), n_days == 120)| () Bool)
(declare-fun |Or(Or(False, n_days_prime == 60), n_days_prime == 120)| () Bool)
(declare-fun |Or(Or(False, asymp_prob == 1/100), asymp_prob == 1/20)| () Bool)
(declare-fun |Or(Or(False, asymp_prob_prime == 1/100),
   asymp_prob_prime == 1/20)|
             ()
             Bool)
(declare-fun |n_days >= 60| () Bool)
(declare-fun |n_days_prime >= 60| () Bool)
(declare-fun |symp_prob >= 0| () Bool)
(declare-fun |symp_prob_prime >= 0| () Bool)
(declare-fun average_age () Int)
(declare-fun |average_age > 0| () Bool)
(declare-fun average_age_prime () Int)
(declare-fun |average_age_prime > 0| () Bool)
(declare-fun quar_period () Int)
(declare-fun |quar_period >= 0| () Bool)
(declare-fun quar_period_prime () Int)
(declare-fun |quar_period_prime >= 0| () Bool)
(declare-fun pop_size () Int)
(declare-fun pop_infected () Int)
(declare-fun |pop_infected <= pop_size| () Bool)
(declare-fun pop_size_prime () Int)
(declare-fun pop_infected_prime () Int)
(declare-fun |pop_infected_prime <= pop_size_prime| () Bool)
(declare-fun |pop_infected >= 100| () Bool)
(declare-fun |pop_infected_prime >= 100| () Bool)
(declare-fun |asymp_prob >= 0| () Bool)
(declare-fun |asymp_prob_prime >= 0| () Bool)
(declare-fun |Or(Or(False, trace_probs == 1/2), trace_probs == 1)| () Bool)
(declare-fun |Or(Or(False, trace_probs_prime == 1/2),
   trace_probs_prime == 1)|
             ()
             Bool)
(declare-fun |symp_quar_prob >= 0| () Bool)
(declare-fun |symp_quar_prob_prime >= 0| () Bool)
(declare-fun |asymp_quar_prob >= 0| () Bool)
(declare-fun |asymp_quar_prob_prime >= 0| () Bool)
(declare-fun |trace_probs <= 1| () Bool)
(declare-fun |trace_probs_prime <= 1| () Bool)
(declare-fun |Or(Or(Or(False, quar_period == 5), quar_period == 14),
   quar_period == 20)|
             ()
             Bool)
(declare-fun |Or(Or(Or(False, quar_period_prime == 5),
      quar_period_prime == 14),
   quar_period_prime == 20)|
             ()
             Bool)
(declare-fun location () String)
(declare-fun |Or(Or(False, location == "Niger"), location == "Japan")| () Bool)
(declare-fun location_prime () String)
(declare-fun |Or(Or(False, location_prime == "Niger"),
   location_prime == "Japan")|
             ()
             Bool)
(declare-fun |average_age ==
If(location == "Poland",
   42,
   If(location == "Niger",
      20,
      If(location == "Japan", 46, 0)))|
             ()
             Bool)
(declare-fun |average_age_prime ==
If(location_prime == "Poland",
   42,
   If(location_prime == "Niger",
      20,
      If(location_prime == "Japan", 46, 0)))|
             ()
             Bool)
(declare-fun |pop_size >= 10000| () Bool)
(declare-fun |pop_size_prime >= 10000| () Bool)
(declare-fun |Or(Or(False, symp_quar_prob == 1/2), symp_quar_prob == 1)|
             ()
             Bool)
(declare-fun |Or(Or(False, symp_quar_prob_prime == 1/2),
   symp_quar_prob_prime == 1)|
             ()
             Bool)
(declare-fun |pop_size <= 100000| () Bool)
(declare-fun |pop_size_prime <= 100000| () Bool)
(declare-fun |quar_period < n_days| () Bool)
(declare-fun |quar_period_prime < n_days_prime| () Bool)
(declare-fun |Or(Or(False, pop_size == 10000), pop_size == 20000)| () Bool)
(declare-fun |Or(Or(False, pop_size_prime == 10000),
   pop_size_prime == 20000)|
             ()
             Bool)
(declare-fun |symp_prob <= 1| () Bool)
(declare-fun |symp_prob_prime <= 1| () Bool)
(assert (=> |trace_probs >= 0| (>= trace_probs 0.0)))
(assert (=> |trace_probs_prime >= 0| (>= trace_probs_prime 0.0)))
(assert (=> |asymp_prob <= 1| (<= asymp_prob 1.0)))
(assert (=> |asymp_prob_prime <= 1| (<= asymp_prob_prime 1.0)))
(assert (=> |n_days <= 365| (<= n_days 365)))
(assert (=> |n_days_prime <= 365| (<= n_days_prime 365)))
(assert (=> |Or(Or(False, symp_prob == 1/2), symp_prob == 1)|
    (or false (= symp_prob (/ 1.0 2.0)) (= symp_prob 1.0))))
(assert (=> |Or(Or(False, symp_prob_prime == 1/2), symp_prob_prime == 1)|
    (or false (= symp_prob_prime (/ 1.0 2.0)) (= symp_prob_prime 1.0))))
(assert (=> |symp_quar_prob <= 1| (<= symp_quar_prob 1.0)))
(assert (=> |symp_quar_prob_prime <= 1| (<= symp_quar_prob_prime 1.0)))
(assert (=> |Or(Or(False, asymp_quar_prob == 1/2), asymp_quar_prob == 1)|
    (or false (= asymp_quar_prob (/ 1.0 2.0)) (= asymp_quar_prob 1.0))))
(assert (=> |Or(Or(False, asymp_quar_prob_prime == 1/2),
   asymp_quar_prob_prime == 1)|
    (or false
        (= asymp_quar_prob_prime (/ 1.0 2.0))
        (= asymp_quar_prob_prime 1.0))))
(assert (=> |asymp_quar_prob <= 1| (<= asymp_quar_prob 1.0)))
(assert (=> |asymp_quar_prob_prime <= 1| (<= asymp_quar_prob_prime 1.0)))
(assert (=> |Or(Or(False, n_days == 60), n_days == 120)|
    (or false (= n_days 60) (= n_days 120))))
(assert (=> |Or(Or(False, n_days_prime == 60), n_days_prime == 120)|
    (or false (= n_days_prime 60) (= n_days_prime 120))))
(assert (=> |Or(Or(False, asymp_prob == 1/100), asymp_prob == 1/20)|
    (or false (= asymp_prob (/ 1.0 100.0)) (= asymp_prob (/ 1.0 20.0)))))
(assert (=> |Or(Or(False, asymp_prob_prime == 1/100),
   asymp_prob_prime == 1/20)|
    (or false
        (= asymp_prob_prime (/ 1.0 100.0))
        (= asymp_prob_prime (/ 1.0 20.0)))))
(assert (=> |n_days >= 60| (>= n_days 60)))
(assert (=> |n_days_prime >= 60| (>= n_days_prime 60)))
(assert (=> |symp_prob >= 0| (>= symp_prob 0.0)))
(assert (=> |symp_prob_prime >= 0| (>= symp_prob_prime 0.0)))
(assert (=> |average_age > 0| (> average_age 0)))
(assert (=> |average_age_prime > 0| (> average_age_prime 0)))
(assert (=> |quar_period >= 0| (>= quar_period 0)))
(assert (=> |quar_period_prime >= 0| (>= quar_period_prime 0)))
(assert (=> |pop_infected <= pop_size| (<= pop_infected pop_size)))
(assert (=> |pop_infected_prime <= pop_size_prime|
    (<= pop_infected_prime pop_size_prime)))
(assert (=> |pop_infected >= 100| (>= pop_infected 100)))
(assert (=> |pop_infected_prime >= 100| (>= pop_infected_prime 100)))
(assert (=> |asymp_prob >= 0| (>= asymp_prob 0.0)))
(assert (=> |asymp_prob_prime >= 0| (>= asymp_prob_prime 0.0)))
(assert (=> |Or(Or(False, trace_probs == 1/2), trace_probs == 1)|
    (or false (= trace_probs (/ 1.0 2.0)) (= trace_probs 1.0))))
(assert (=> |Or(Or(False, trace_probs_prime == 1/2),
   trace_probs_prime == 1)|
    (or false (= trace_probs_prime (/ 1.0 2.0)) (= trace_probs_prime 1.0))))
(assert (=> |symp_quar_prob >= 0| (>= symp_quar_prob 0.0)))
(assert (=> |symp_quar_prob_prime >= 0| (>= symp_quar_prob_prime 0.0)))
(assert (=> |asymp_quar_prob >= 0| (>= asymp_quar_prob 0.0)))
(assert (=> |asymp_quar_prob_prime >= 0| (>= asymp_quar_prob_prime 0.0)))
(assert (=> |trace_probs <= 1| (<= trace_probs 1.0)))
(assert (=> |trace_probs_prime <= 1| (<= trace_probs_prime 1.0)))
(assert (=> |Or(Or(Or(False, quar_period == 5), quar_period == 14),
   quar_period == 20)|
    (or false (= quar_period 5) (= quar_period 14) (= quar_period 20))))
(assert (=> |Or(Or(Or(False, quar_period_prime == 5),
      quar_period_prime == 14),
   quar_period_prime == 20)|
    (or false
        (= quar_period_prime 5)
        (= quar_period_prime 14)
        (= quar_period_prime 20))))
(assert (=> |Or(Or(False, location == "Niger"), location == "Japan")|
    (or false (= location "Niger") (= location "Japan"))))
(assert (=> |Or(Or(False, location_prime == "Niger"),
   location_prime == "Japan")|
    (or false (= location_prime "Niger") (= location_prime "Japan"))))
(assert (let ((a!1 (ite (= location "Poland")
                42
                (ite (= location "Niger") 20 (ite (= location "Japan") 46 0)))))
  (=> |average_age ==
If(location == "Poland",
   42,
   If(location == "Niger",
      20,
      If(location == "Japan", 46, 0)))|
      (= average_age a!1))))
(assert (let ((a!1 (ite (= location_prime "Poland")
                42
                (ite (= location_prime "Niger")
                     20
                     (ite (= location_prime "Japan") 46 0)))))
  (=> |average_age_prime ==
If(location_prime == "Poland",
   42,
   If(location_prime == "Niger",
      20,
      If(location_prime == "Japan", 46, 0)))|
      (= average_age_prime a!1))))
(assert (=> |pop_size >= 10000| (>= pop_size 10000)))
(assert (=> |pop_size_prime >= 10000| (>= pop_size_prime 10000)))
(assert (=> |Or(Or(False, symp_quar_prob == 1/2), symp_quar_prob == 1)|
    (or false (= symp_quar_prob (/ 1.0 2.0)) (= symp_quar_prob 1.0))))
(assert (=> |Or(Or(False, symp_quar_prob_prime == 1/2),
   symp_quar_prob_prime == 1)|
    (or false (= symp_quar_prob_prime (/ 1.0 2.0)) (= symp_quar_prob_prime 1.0))))
(assert (=> |pop_size <= 100000| (<= pop_size 100000)))
(assert (=> |pop_size_prime <= 100000| (<= pop_size_prime 100000)))
(assert (=> |quar_period < n_days| (< quar_period n_days)))
(assert (=> |quar_period_prime < n_days_prime| (< quar_period_prime n_days_prime)))
(assert (=> |Or(Or(False, pop_size == 10000), pop_size == 20000)|
    (or false (= pop_size 10000) (= pop_size 20000))))
(assert (=> |Or(Or(False, pop_size_prime == 10000),
   pop_size_prime == 20000)|
    (or false (= pop_size_prime 10000) (= pop_size_prime 20000))))
(assert (=> |symp_prob <= 1| (<= symp_prob 1.0)))
(assert (=> |symp_prob_prime <= 1| (<= symp_prob_prime 1.0)))
(assert-soft (= n_days n_days_prime) :weight 2)
(assert-soft (= quar_period quar_period_prime) :weight 2)
(assert-soft (= pop_size pop_size_prime) :weight 2)
(assert-soft (= pop_infected pop_infected_prime) :weight 2)
(assert-soft (= location location_prime) :weight 2)
(assert-soft (= symp_prob symp_prob_prime) :weight 2)
(assert-soft (= asymp_prob asymp_prob_prime) :weight 2)
(assert-soft (= symp_quar_prob symp_quar_prob_prime) :weight 2)
(assert-soft (= asymp_quar_prob asymp_quar_prob_prime) :weight 2)
(assert-soft (= trace_probs trace_probs_prime) :weight 2)
(assert-soft (= average_age average_age_prime) :weight 2)
(check-sat)

