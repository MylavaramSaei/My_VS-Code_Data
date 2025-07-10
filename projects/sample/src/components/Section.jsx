import { motion } from "framer-motion";

export default function Section({ title, children }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      whileInView={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.6 }}
      className="p-6 max-w-4xl mx-auto"
    >
      <h2 className="text-2xl font-bold mb-4">{title}</h2>
      <div className="text-gray-700 text-base">{children}</div>
    </motion.div>
  );
}
