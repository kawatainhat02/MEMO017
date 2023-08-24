// …
export default defineConfig({
  plugins: [
    {enforce: 'pre', ...mdx(/* jsxImportSource: …, otherOptions… */)},
    react()
  ]
})
// …
