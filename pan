class Solution:
    def pancakeSort(self, arr: List[int]) -> List[int]:
        x=len(arr)
        M=[]
        for indx in range(x):
            max_=max(arr[:x-indx])
            max_indx=arr.index(max_)+1
            arr[:max_indx]=reversed(arr[:max_indx])
            M.append(max_indx)
            arr[:x-indx]=reversed(arr[:x-indx])
            M.append(x-indx)
        return M
