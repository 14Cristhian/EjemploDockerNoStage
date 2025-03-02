let time = 0;

const syncDB = () => {
  time++;
  console.log("Tick Cada multiplo de 5:  ", time);

  return time;
};

module.exports = { syncDB };
