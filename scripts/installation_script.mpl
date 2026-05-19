dir := FileTools:-JoinPath([currentdir(), "/BasicLemma.mla"]);
march('create', dir);
read "src/BasicLemma.mpl";
savelib('BasicLemma', dir);
