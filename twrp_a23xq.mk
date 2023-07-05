# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_DEVICE := a23xq
PRODUCT_NAME := twrp_a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236B
PRODUCT_MANUFACTURER := samsung
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# # Enable project quotas and casefolding for emulated storage without sdcardfs
# $(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device.mk
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23xqnsxx-user 11 RP1A.200720.012 A236BXXU3CWC1 release-keys"

BUILD_FINGERPRINT := samsung/a23xqnsxx/a23xq:11/RP1A.200720.012/A236BXXU3CWC1:user/release-keys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
