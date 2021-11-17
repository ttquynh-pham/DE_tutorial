# AWS Key Management Service – KMS

* AWS KMS is a managed encryption service that enables encryption of data easily
* KMS provides a highly available key storage, management, and auditing solution to encrypt the data across AWS services 
  &
   within applications
* KMS is seamlessly integrated with several other AWS services to make encrypting data in those service easy
* KMS Keys are only stored and used in the region in which they are created. They cannot be transferred to another region
* KMS enforces usage and management policies, to control which IAM user, role from your account or other accounts who can manage and use keys
* KMS is integrated with CloudTrail, so all requests to use the keys are logged to understand who used which key when
* KMS allows rotation of the keys,
  * if keys generated by KMS rotated automatically by KMS, data does not need to be re-encrypted. KMS keeps previous versions of keys to use for decryption of data encrypted under an old version of a key. All new encryption requests against a key in AWS KMS are encrypted under the newest version of the key.
  * if manually rotated, data has to be re-encrypted depending on the application’s configuration
  * Automatic key rotation is not supported for imported keys

## KMS Working

* KMS centrally manages and securely stores the keys
* Keys can be generated or imported from your key management infrastructure
* Keys can be used from within the applications and supported AWS services to protect the data, but the key never leaves KMS AWS.
* Data is submitted to AWS KMS to be encrypted, or decrypted, under keys that you control.
* Usage policies on these keys can be set that determine which users can use them to encrypt and decrypt data.

## Envelope encryption

* AWS cloud services integrated with AWS KMS use a method called envelope encryption to protect the data.
* Envelope encryption is an optimized method for encrypting data that uses two different keys
* With Envelop encryption
  * A data key is generated and used by the AWS service to encrypt each piece of data or resource.
  * Data key is encrypted under a master key that you define in AWS KMS.
  * Encrypted data key is then stored by the AWS service.
  * For data decryption by the AWS service, the encrypted data key is passed to AWS KMS and decrypted under the master key that was originally encrypted under so the service can then decrypt your data.
* KMS does support sending data less than 4 KB to be encrypted, envelope encryption can offer significant performance benefits
* When the data is encrypted directly with KMS it must be transferred over the network.
* Envelope encryption reduces the network load for the application or AWS cloud service as Only the request and fulfillment of the data key through KMS must go over the network

## KMS Features

* Create keys with a unique alias and description
* Import your own keys
* Control which IAM users and roles can manage keys
* Control which IAM users and roles can use keys to encrypt 
  &
   decrypt data
* Choose to have AWS KMS automatically rotate keys on an annual basis
* Temporarily disable keys so they cannot be used by anyone
* Re-enable disabled keys
* Delete keys that you no longer use
* Audit use of keys by inspecting logs in AWS CloudTrail


