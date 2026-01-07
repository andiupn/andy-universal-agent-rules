#!/usr/bin/env python3
"""Performance benchmark untuk knowledge management scripts"""

import time
import subprocess
import sys
import os
from pathlib import Path

def measure_script(script_name, args=[]):
    """Measure execution time of a script"""
    # Set UTF-8 encoding untuk handle emoji di Windows
    env = os.environ.copy()
    env['PYTHONIOENCODING'] = 'utf-8'
    
    start = time.time()
    result = subprocess.run(
        [sys.executable, f"scripts/{script_name}"] + args,
        capture_output=True,
        text=True,
        encoding='utf-8',
        errors='replace',  # Replace undecodable chars instead of error
        env=env
    )
    elapsed = (time.time() - start) * 1000  # Convert to ms
    return elapsed, result.returncode == 0

def main():
    print("🔍 Performance Benchmark")
    print("=" * 60)
    print()
    
    benchmarks = [
        ("validate-index.py", ["--report"], "Validate Index"),
        ("search-knowledge.py", ["oracle", "--limit", "10"], "Search Knowledge"),
        ("sync-agents-stats.py", [], "Sync Statistics"),
        ("detect-environment.py", [], "Detect Environment"),
    ]
    
    results = []
    
    for script, args, desc in benchmarks:
        print(f"⏱️  Testing: {desc}...", end=" ", flush=True)
        elapsed, success = measure_script(script, args)
        status = "✅" if success else "❌"
        results.append((desc, elapsed, success))
        print(f"{status} {elapsed:.1f}ms")
    
    print()
    print("=" * 60)
    print("📊 Results Summary:")
    print()
    
    total = 0
    for desc, elapsed, success in results:
        status = "PASS" if success else "FAIL"
        target = "< 500ms"
        result = "✅" if elapsed < 500 else "⚠️"
        print(f"  {result} {desc:20} {elapsed:6.1f}ms  ({status}, target: {target})")
        total += elapsed
    
    print()
    print(f"Total execution time: {total:.1f}ms")
    print()
    
    # Save benchmark results
    with open(".agent/context/benchmark-results.txt", "w") as f:
        f.write(f"Benchmark Date: {time.strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Total Time: {total:.1f}ms\n\n")
        for desc, elapsed, success in results:
            f.write(f"{desc}: {elapsed:.1f}ms ({'PASS' if success else 'FAIL'})\n")
    
    print("✅ Results saved to: .agent/context/benchmark-results.txt")

if __name__ == "__main__":
    main()
