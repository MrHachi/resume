package main

import (
	"fmt"
	"os"
	"text/template"

	"github.com/Masterminds/sprig/v3"
	"gopkg.in/yaml.v3"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Fprintf(os.Stderr, "usage: %s <input.yml> <template>\n", os.Args[0])
		os.Exit(2)
	}

	data, err := os.ReadFile(os.Args[1])
	if err != nil {
		panic(fmt.Errorf("open file %s: %w", os.Args[1], err))
	}

	var values map[string]any
	if err := yaml.Unmarshal(data, &values); err != nil {
		panic(fmt.Errorf("unmarshal yaml %s: %w", os.Args[1], err))
	}

	templateFile := os.Args[2]

	templateBytes, err := os.ReadFile(templateFile)
	if err != nil {
		panic(fmt.Errorf("read template %s: %w", templateFile, err))
	}

	tmpl, err := template.New("resume").
		Option("missingkey=error").
		Funcs(sprig.TxtFuncMap()).
		Parse(string(templateBytes))
	if err != nil {
		panic(fmt.Errorf("parse template %s: %w", templateFile, err))
	}

	if err := tmpl.Execute(os.Stdout, values); err != nil {
		panic(fmt.Errorf("render template %s: %w", templateFile, err))
	}
}
