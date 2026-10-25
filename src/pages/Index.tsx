import React from "react";
import { MissionOrderProvider } from "@/context/MissionOrderContext";
import Layout from "@/components/MissionOrderGenerator/Layout";

const Index = () => {
  return (
    <MissionOrderProvider>
      <Layout />
    </MissionOrderProvider>
  );
};

export default Index;
