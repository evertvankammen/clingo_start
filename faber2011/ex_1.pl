


company(philips;sony;samsung;lg).
ownsStk(samsung,philips,51). % samsung own 51% of philips
ownsStk(lg,sony,10).
ownsStk(philips,sony,60).



controlsStk(C1, C1, C2, P) :- ownsStk(C1, C2, P). % C1 owns C2 through itself (C1)
controlsStk(C1, C2, C3, P) :- company(C1), controls(C1, C2), ownsStk(C2, C3, P). % C1 owns P% of C3 through C2. It must have 50+% of C2
controls(C1, C3) :- company(C1),company(C3), #sum{P, C2 : controlsStk(C1, C2, C3, P)} > 50. % sommeer P van alle tussen bedrijven C2



