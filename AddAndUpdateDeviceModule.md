# How to Add a Device Submodule?
- Firstly, you need to create a repo to put your devices drivers.
- Secondly, clone this repo, it's a framework.
  ```
  git clone https://github.com/woa-msmnile/msmnile-drivers --depth=1
  ```
- Thirdly, add the submodule.
  ```
  git submodule add [url-to-your-submodule] components/QC8150/Device/
  ```
- Then `git add` & `git commit` & `git push`.

# How to Update One Device Submodule?
- Firstly, you have to clone this repo, it's a framework.
  ```
  git clone https://github.com/woa-msmnile/msmnile-drivers --depth=1
  ```
- Secondly, fetch your device module
  ```
   git submodule init
   git submodule update components/QC8150/Device/Andromeda	# Example Here.
   git -C components/QC8150/Device/Andromeda fetch			# Example Here.
  ```
- Thirdly, checkout to the newest commit
  ```
  git -C components/QC8150/Device/Andromeda checkout [commit]
  ```
- Then `git add` & `git commit` & `git push`.
