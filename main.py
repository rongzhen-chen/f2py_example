import numpy as np
import matplotlib.pyplot as plt
#
import fun_threshold as fortranFun

# Read the original image data
orig= np.genfromtxt('./image.txt')

# Threshold value.
t = 50

# Call the fortran routine.
new = fortranFun.threshold_image(image=orig, threshold=t)

# Plot the images.
fig, axes = plt.subplots(1, 2)

#axes[0].imshow(I, cmap=plt.cm.gray)
axes[0].imshow(orig)
axes[0].axis('off'); axes[0].set_title('Original')

#axes[1].imshow(T, cmap=plt.cm.gray)
axes[1].imshow(new)
axes[1].axis('off'); axes[1].set_title('Thresholded at %.2f' % t)

plt.tight_layout()
plt.show()
