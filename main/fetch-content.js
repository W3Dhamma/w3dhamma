import { promises as fs } from 'fs';
import path from 'path';

async function getAllHtmlFiles(dir) {
  const files = await fs.readdir(dir);
  const htmlFiles = [];

  for (const file of files) {
    const filePath = path.join(dir, file);
    const stat = await fs.stat(filePath);

    if (stat.isDirectory()) {
      htmlFiles.push(...await getAllHtmlFiles(filePath));
    } else if (path.extname(file).toLowerCase() === '.html') {
      htmlFiles.push(filePath);
    }
  }

  return htmlFiles;
}

async function getHtmlContents(rootDir) {
  try {
    const htmlFiles = await getAllHtmlFiles(rootDir);
    let allContents = '';

    for (const file of htmlFiles) {
      const content = await fs.readFile(file, 'utf-8');
      allContents += `\n\n--- File: ${file} ---\n\n`;
      allContents += content;
      allContents += '\n\n--- End of file ---\n\n';
    }

    console.log(allContents);
  } catch (error) {
    console.error('Error:', error);
  }
}

// Replace './subjects' with the actual path to your root directory containing HTML files
const rootDir = './subjects';
getHtmlContents(rootDir);
