---
title: "Quick Sort"
date: 2019-08-26T15:45:34+09:00
tags: ["algorithm"]
draft: false
---

```quick_sort.go
package sort

// Quick sorts nums from index l to r
func Quick(nums []int, l, r int) {
	if l >= r {
		return
	}
	p := partition(nums, l, r)
	Quick(nums, l, p-1)
	Quick(nums, p+1, r)
}

// partition puts nums[hi] to its right place and return the index of it
func partition(nums []int, lo, hi int) int {
	i := lo - 1
	for j := lo; j < hi; j++ {
		if nums[j] < nums[hi] {
			i++
			nums[i], nums[j] = nums[j], nums[i]
		}
	}
	nums[i+1], nums[hi] = nums[hi], nums[i+1]
	return i + 1
}

```

