% Allergy Diagnosis

% Ali has sneezing
sneezing(ali).

% Some patients
patient(ali).
patient(a).
patient(b).

% Patient a has itching
itching(a).

% Patient b does not have fever
no_fever(b).

% Every patient with sneezing has allergy symptoms
allergy_symptom(X) :-
    patient(X),
    sneezing(X).

% Every patient with allergy symptoms needs medicine
medicine(X) :-
    patient(X),
    allergy_symptom(X).

% If a patient has allergy symptoms and needs medicine,
% then the patient visits the doctor
visits_doctor(X) :-
    patient(X),
    allergy_symptom(X),
    medicine(X).