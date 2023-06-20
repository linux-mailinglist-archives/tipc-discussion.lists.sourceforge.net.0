Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D19BE737735
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Jun 2023 00:07:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qBjVK-0006Hg-Cz;
	Tue, 20 Jun 2023 22:07:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qBjVI-0006Ha-W2
 for tipc-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 22:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gl8itqMsE7I49i97m1E3rkpuyn9qFL+DEVE8c8in9T4=; b=T4v0i0blgJI/oVzO9IrPjk6W5C
 lAYvKDdEk+20388oq51Io4Pqe8If3twBkqYLxHt2SvDfDNTJAdWDgXwUFrFuRp2e+NYpt23G/XgBI
 6aN3sTD/O/Z739gUkCl3xhOd205abouzp+qvWgLNfsc39GwmUM1MFb/ZdahQI0FwK2zM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Gl8itqMsE7I49i97m1E3rkpuyn9qFL+DEVE8c8in9T4=; b=A
 VLB5UgU4LXaHpokqPj3PiWa9VoHDCApEjFW+mGNn9O4SesS2/RBoMKrkVdJS751jb+d6IyJcUvshL
 wDS2VyLuOSLy3EgaFBeH7DbmNOxbKb36Ekj7AT3kUC1WY39cNgtv9WQWo/K5YUoH2EQOTRaXQ3Ge1
 keH/SA3LAvHPys1k=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qBjVF-00A6yS-5i for tipc-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 22:07:13 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Tue, 20 Jun 2023 17:07:02 -0500
Received: (sendio-qmail 28418 invoked from network); 20 Jun 2023 21:40:21 -0000
X-Sendio-SenderIP: 104.47.55.104
X-Sendio-RemoteSenderIP: 104.47.55.104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687297220; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:Accept-Language:
 Content-Language:authentication-results:Content-Type:
 MIME-Version; bh=Gl8itqMsE7I49i97m1E3rkpuyn9qFL+DEVE8c8in9T4=;
 b=ghdOtTPlDPsFA6EG5l68z4JTXA53/ovgSTK1ykikO97cfVcE/4k8BXxZTs+i5x
 AAK1VEpPHKPwK28BM6yCxOxFOlPu8AkvFqF9I2VXvf5OsIcDeL0gDUrfeMATVFNe
 fl6Vbo6loQpDq1BQzxms3gcq9Ty8+e6VEjsTBsTcCeMEQ=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.20.211217
X-Sendio-LASED-Spam: NonSpam
X-Sendio-LASED-SpamProbability: 0.079439
X-Sendio-LASED-Hits: BODYTEXTH_SIZE_3000_MORE 0.000000,
 BODY_SIZE_10000_PLUS 0.000000, BODY_SIZE_25K_PLUS 0.000000
 HTML_50_70 0.100000, NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000
 NO_URI_HTTPS 0.000000, TO_NAME_IS_ADDY 0.000000, TRANSACTIONAL 0.000000
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000
 __BODY_NO_MAILTO 0.000000, __BODY_TEXT_X4 0.000000, __COURIER_PHRASE 0.000000
 __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000, __CTYPE_MULTIPART 0.000000
 __CTYPE_MULTIPART_ALT 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000
 __HAS_FROM 0.000000, __HAS_HTML 0.000000, __HAS_MSGID 0.000000
 __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000,
 __HAS_X_FF_ASR_SFV 0.000000
 __HTML_BAD_END 0.000000, __HTML_ENTITIES_X4 0.000000, __HTML_TAG_DIV 0.000000
 __MIME_HTML 0.000000, __MIME_TEXT_H 0.000000, __MIME_TEXT_H1 0.000000
 __MIME_TEXT_H2 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000
 __MIME_TEXT_P2 0.000000, __MIME_VERSION 0.000000, __MSGID_32_64_CAPS 0.000000
 __PART_TYPE_HTML 0.000000, __PHISH_SPEAR_SUBJ_SUBJECT 0.000000,
 __RCVD_FROM_SUSP_HOSTNAME 0.000000
 __SANE_MSGID 0.000000, __STYLE_RATWARE_NEG 0.000000, __STYLE_TAG 0.000000
 __SUBJ_ALPHA_END 0.000000, __SUBJ_TRANSACTIONAL 0.000000,
 __SUBJ_TR_GEN 0.000000
 __TAG_EXISTS_HTML 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000
 __TO_NO_NAME 0.000000, __URI_NO_MAILTO 0.000000, __URI_NO_WWW 0.000000
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687297220.28411.1
Received: from unknown (HELO NAM10-MW2-obe.outbound.protection.outlook.com)
 (104.47.55.104)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 20 Jun 2023 21:40:20 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZOr1e8Qsgimpkx6BTK/JnkdzZza1u41QhGosTznGNh3qvGqiiIslA67hyT4+a37jobaUXinx/OVt7uxAAKTPN4iVI18w9ZtI7qV0VhfdjVWOKCfmQ2n0rUoiOb3cA+IES5g2W79ym4WlngwHItKJCQ1yKM+eqgX+SsV+JP8aXKcWY1yWk3XWa4E8GM6eeRBOYskI2ZhQLKEFCd7bIZuw8//AEsV0bRvy+0Ju6YCEA760wK64osjWcgqy2djHOhff2F+PrYUmg2XZK+BtjGeGTTwN3hEQ3DK7zdLcYccx4/keNZObt/AVW7p0Wo/EKTMZpiYVq7wz+sPgVAzbWnkxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gl8itqMsE7I49i97m1E3rkpuyn9qFL+DEVE8c8in9T4=;
 b=O1uy0BUMydXdjLRKevthmTJodR9Ymea7ksZEFjxsmZlQJu/AJFCTw93Pvmev9b6BiAgbg/ALW7K2Bkw1RHT774WYfbfvohMJWW1KqYzYXiIoB3T42ITlnp6w74WMEqQ6kks3HHmKB1UbujyLCp8pAKbE82TFxR11qG/eOkUjQiqF4nSzBy1lcW4tUYaT01ECy4BPRIxOdGhuq8S95zWqTnE5VlOAGf8y25/YvZWDkKCohsFDGvEiAbScbZxNFne2k+0LcHCttr0EfKo0GbrAmq+LmgVWe3CGFeDn1aUzI6QL6CZ2RwufGuATp5NUgE4FSS0sfME1qCe97AQ4FqgYSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by PH0PR13MB4954.namprd13.prod.outlook.com (2603:10b6:510:74::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 21:40:16 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Tue, 20 Jun 2023
 21:40:15 +0000
From: Rune Torgersen <runet@innovsys.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHw==
Date: Tue, 20 Jun 2023 21:40:15 +0000
Message-ID: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|PH0PR13MB4954:EE_
x-ms-office365-filtering-correlation-id: d12f9fd9-eedc-401e-301b-08db71d6ef60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NaULtE4V78IO7asqZp13OzV1f/gC7xsUXc02b6fz9pYG+jBaibk/MJwIBauggbGkVt+bM1EKLxYbpLxXwunGRhKx0ghFxoC1Q6AhTcUwz0U95JE3MyYBA68XeTEuSvwlwmlRCKwnzVuongsgAZdP2yEaR4sLmSGqoqCBjbnO5sBW3X1Z/w/f+CkFaDvntN8ZnS1CXsJxQWMeRq5G+DaPmiyeK8vbFg6qi1bsJG1cVRhLHIjDeo+Q0EtGBlGSkAtrI8upbj3cLgFDG5EXlHnALiPh+QnchkGBjMaSK7+gR4vraKeUgi3XvDNUH1N6t0Rd7FeJlpd2t17tyC7TlG0dOFlNap+nHO6JvVzt6UjkJ2RWe9v5oSPNH3bfflCQEiiLQh4zY0xLwvyOiWdtd42BxFLhK+RAnf9vTYOGajdkjRw6CvNsUNAi+9kPxA6bSjyCDLyUIX32tFkztV8MbwqAP0lWoqLLGPur5ummux5Bh3UhjqmoRix6Vp5Wa7gOisH2+8sjDkobbjECCnwhoCPc8B8azKTeLurCMYoVGDIWVIjNRT4jITIwimoruVyVBfpz9eH+/DkbjgAdEwdtY68KFZEVsZiN3HL3oqsFerej9T1RMKyABNLYtw36F60g3Xxk/ye6ZV+h9XPaTzhdFGrpmA/vrMwPg2BxARS/oJ6xVgI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(39850400004)(366004)(451199021)(8936002)(41300700001)(8676002)(478600001)(122000001)(38100700002)(6506007)(71200400001)(83380400001)(26005)(9686003)(186003)(55236004)(7696005)(55016003)(86362001)(38070700005)(316002)(33656002)(64756008)(66556008)(6916009)(66946007)(76116006)(66476007)(66446008)(52536014)(15650500001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aTxD+PW9kb3ElkJn5pyhuATyHTPBGfsBnOz2nPav8zf6jnUHnKCNVvFesDm9?=
 =?us-ascii?Q?N+Lez0SJ59CnvBGodnxrjenQsBptNNqLHJ08256DwZ6mkWDIwkNWKa3EOi52?=
 =?us-ascii?Q?09C7M9WeoLVKkXS4DK3Q2DBWBPgiS4rFx31x9uZN9ogBrrp1/8gyPu7kKbTb?=
 =?us-ascii?Q?Dx5Qa+MthmIBBKKrDWCk6sSkapLSihgu4T2tAdNCaQbm0Tq1xoNgG0eDgJ43?=
 =?us-ascii?Q?gbip0XBayvB2kDcrH+yprs6CgYJvM+2NBbwANt1+tikzghTfKHX6nXIAzDBK?=
 =?us-ascii?Q?ENYRnAzic8lE0a3beoSMryhnMIbhvKpWGjBaZU/cRtVfXW5qHdjvjpfQa6y7?=
 =?us-ascii?Q?go0OusVl9k5AbUEUrPLMq68fLYb8KWWrw7Ch9GHWRuJLeQu5yANh3g1fO3JW?=
 =?us-ascii?Q?oRcLuy9l2s/3fr5EAn+aoJIpl7LccTaIpOfUobnCdu+WaMaPgTYJyrNLvhM8?=
 =?us-ascii?Q?+wGj0sYyRo7TGC4Jatw2xFDPHzA9zQfk3G7L/UtdCwqG4ww5hXPZ4eW0b4hH?=
 =?us-ascii?Q?8SKD2xNfOVjJyO8DIwyOXr7jQ7dMlcDsEVSQGAE+MmbTWuyBHYBOg7B/9zwc?=
 =?us-ascii?Q?2KdrnMJSKvofh3bDBZLnnQFv/90YB+i+8zAwH0PDuQM2Z2dKSFz8pgyFKBQE?=
 =?us-ascii?Q?Hsb10e1QNjGH5DO1mMq1WQkPiuFQLPOFO6hS9CylV85tOtvhhW2jy11Z9nOS?=
 =?us-ascii?Q?DZkopXqRvWJd/vFOdZh4u+3i1KU6EQSRq6OImW1wXwvvaiMsoRhqvNqkRBhz?=
 =?us-ascii?Q?2zSwREciZ9N/qtUhRAErsF2X8VF56qYMHIiIQERJ3fE6bKk9784WpiEJ41hw?=
 =?us-ascii?Q?5OldIEIIy6nOmBSHWrNPUifonJSB7+pspL58iJ3SpNqtSbWZNqo2J4EiEv/f?=
 =?us-ascii?Q?bKqOIgvZPPMRXFtAO3ayOY9MQG4LFI2YfO/OSjohFUyp8iFwxz+JIuVYs8lh?=
 =?us-ascii?Q?edhkqvEvA8Ho7H+g/efdVFiIW1g3H9D9+tasPcj/QLEBZ0bgRvUiwvfJD75G?=
 =?us-ascii?Q?cggrIA0LuHOEOOp377Kgwa5K+FrT0PR4SU5aVYGCKEDvNqKM45ukBlA26u3E?=
 =?us-ascii?Q?P5q5KdzagiWjQ5lc0TAwYuTBuZDUj5XgUCBXSdcRHdTSF2AIwW4fRCROEp3y?=
 =?us-ascii?Q?/4NM4M9AfRAfSgKfMeg4rMB966lVUv1N4cQ5oLCEsZ2kFb5X4jD266ZO7sYW?=
 =?us-ascii?Q?6YiVoT68s+k+MmfKa/qN6TQ+ei3RQO2S5JpDHJXzFu54mlFN8/tWBFrjyqjh?=
 =?us-ascii?Q?dmbpdiWiZRouAdQy1Jdbb1IgV0zDX1XpyzQWyoE/XDpHpkP9JZMb9VjmrXHB?=
 =?us-ascii?Q?t/1qU9JjyfB/wu1/fw6fRntNGuvvBeKtV8JnJ52eWO/WxLCOat1zPcy/KwPj?=
 =?us-ascii?Q?6K0m18ZyVxyy0Lu+/+/f0JwlLP7xvHKW0aTnu0j/SHbj8Dc8FccPQBGr3KCL?=
 =?us-ascii?Q?fP65RnewATHJNL+/1SmjLpjtBpTB8LNBT6Z5paCcS/pp8nDL7UYU2XEAJuoo?=
 =?us-ascii?Q?d1twSFbXS3H8Aiuop0xwpN0f5cdN/RVV5ou1DljsIAPlBnlHjxGLmVJ07y/j?=
 =?us-ascii?Q?TTjXdxtdJAx2RJy1Sm1S///3Jcr6T0eJKbdqTNib?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d12f9fd9-eedc-401e-301b-08db71d6ef60
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 21:40:15.5948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Q9dKATHcNTjO4fogYBiNn9vctL4WdeKX7NlXD09SBTa6QDaiMpUFuiUDwRMpb2RfcJELfiRdVeIGpPgDy2YFiqLQH4zAg8ImVHlRNs8AoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB4954
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi. We recently upgraded an appliance we have from Ubuntu
 18.04 to 22.04,
 and are now seeing intermittent issues with RDM message. (Kernel
 5.15.0-75) This issue was never seen on Ubuntu 18.04 and olde [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qBjVF-00A6yS-5i
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC out-of-order publish message
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi. We recently upgraded an appliance we have from Ubuntu 18.04 to 22.04, and are now seeing intermittent issues with RDM message.
(Kernel 5.15.0-75)
This issue was never seen on Ubuntu 18.04 and older (Ubuntu kernel 4.15.0)

I have a minimal test program set that will have the issue seen.

Basically we have a client side that opens a semi-random tipc-instance port, sends a message to a server on a known address.
Part of the message is the client instance address, so the server can send back a reply.

Occasionally the server reply is lost.
We've tracked it down to that occasionally the publish message trails the actual message on the server side. When that happens, apparently the server tipc stack is dropping the message.

This ONLY happens when client and server are on two different pieces of hardware (fairly beefy supermicro server with 2 Xeon 5110 or Silver)

Here is a TCPDump of the sequence where it fails:
1             2023-06-20 16:23:09.761711     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:19712
2             2023-06-20 16:23:09.761758     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
3             2023-06-20 16:23:09.761770     1.1.2     1.1.1     TIPC       105        Payld:Low    NamedMsg type:226 inst:19712
4             2023-06-20 16:23:09.761906     1.1.1     0.0.0     TIPC       74           Name Dist    Withdrawal type:226 inst:19712

5             2023-06-20 16:23:09.761906     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:19968
6             2023-06-20 16:23:09.761954     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
7             2023-06-20 16:23:09.761965     1.1.2     1.1.1     TIPC       105        Payld:Low    NamedMsg type:226 inst:19968
8             2023-06-20 16:23:09.762054     1.1.1     0.0.0     TIPC       74           Name Dist    Withdrawal type:226 inst:19968

9             2023-06-20 16:23:09.762054     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:20224
10           2023-06-20 16:23:09.762101     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
11           2023-06-20 16:23:09.762112     1.1.2     1.1.1     TIPC       105        Payld:Low    NamedMsg type:226 inst:20224
12           2023-06-20 16:23:09.762250     1.1.1     0.0.0     TIPC       74           Name Dist    Withdrawal type:226 inst:20224

13           2023-06-20 16:23:09.762250     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:20480
14           2023-06-20 16:23:09.762250     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
15           2023-06-20 16:23:09.762254     1.1.2     1.1.1     TIPC       58           Link State   State
16           2023-06-20 16:23:09.762267     1.1.2     1.1.1     TIPC       105        Payld:Low    NamedMsg type:226 inst:20480
17           2023-06-20 16:23:09.762396     1.1.1     0.0.0     TIPC       74           Name Dist    Withdrawal type:226 inst:20480

18           2023-06-20 16:23:09.762396     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:20736
19           2023-06-20 16:23:09.762397     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
20           2023-06-20 16:23:09.762410     1.1.2     1.1.1     TIPC       105        Payld:Low    NamedMsg type:226 inst:20736

21           2023-06-20 16:23:09.762592     1.1.1     1.1.2     TIPC       105        Payld:Low    NamedMsg type:226 inst:2
22           2023-06-20 16:23:09.762656     1.1.1     0.0.0     TIPC       74           Name Dist    Withdrawal type:226 inst:20736
23           2023-06-20 16:23:09.762656     1.1.1     0.0.0     TIPC       74           Name Dist    Publication type:226 inst:20992

Packet 23 is the publish, while 21 is the payload.
I would have assumed (and I think the older tipc driver did so) that a datagram received from a source that is not yet published would update the nametable too?

Test programs will usually recreate within 50-100 iterations
Here is the client side that will recreate:
#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <linux/tipc.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char * argv[])
{
    int sendsize = 51;
    char buf[65535];
    memset(buf, 0, sendsize);
    int c = 0;

    struct sockaddr_tipc to_addr;

    to_addr.family = AF_TIPC;
    to_addr.scope = 0;
    to_addr.addrtype = TIPC_ADDR_NAME;
    to_addr.addr.name.name.type = 226;
    to_addr.addr.name.name.instance = 2;
    to_addr.addr.name.domain = 0;

    for (int i = 0; i < 1000; i++)
    {
        int addr = (i & 0xff) << 8;

        int sock = socket(AF_TIPC, SOCK_RDM | SOCK_CLOEXEC, 0);
        if (sock == -1)
            perror("opening socket");
        struct sockaddr_tipc listen_addr;
        listen_addr.family = AF_TIPC;
        listen_addr.addrtype = TIPC_ADDR_NAMESEQ;
        listen_addr.addr.nameseq.type = 226;
        listen_addr.addr.nameseq.lower = addr;
        listen_addr.addr.nameseq.upper = addr;
        listen_addr.scope = TIPC_CLUSTER_SCOPE;

        if (-1 == bind(sock, (struct sockaddr*)&listen_addr, sizeof(struct sockaddr_tipc)))
            perror("Error opening TIPC socket");

        *(int*)buf = addr;
        int rc = sendto(sock, buf, sendsize, 0, (struct sockaddr*)&to_addr, sizeof(to_addr));

        printf("tipc send rc = %d\n", rc);
        if (rc < 0)
            perror("send err");

        rc = recvfrom(sock, buf, 65535, 0, NULL, 0);
        c++;
        if (rc < 0)
            perror("send err");

        printf("Received %d\n", c);

        close(sock);
    }
}

Here is the server side:
#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <linux/tipc.h>

int main(int argc, char * argv[])
{
    int addr = 2;

    int sock = socket(AF_TIPC, SOCK_RDM | SOCK_CLOEXEC, 0);
    if (sock == -1)
        perror("opening socket");
    struct sockaddr_tipc listen_addr;
    listen_addr.family = AF_TIPC;
    listen_addr.addrtype = TIPC_ADDR_NAMESEQ;
    listen_addr.addr.nameseq.type = 226;
    listen_addr.addr.nameseq.lower = 2;
    listen_addr.addr.nameseq.upper = 2;
    listen_addr.scope = TIPC_CLUSTER_SCOPE;

    if (-1 == bind(sock, (struct sockaddr*)&listen_addr, sizeof(struct sockaddr_tipc)))
        perror("Error opening TIPC socket");

    char buf[65535];

    int c = 0;
    while( true )
    {
        int ret = 0;
        ret = recvfrom(sock, buf, 65535, 0, NULL, 0);
        c++;

        if (ret > 0)
        {
            printf("Received %d\n", c);

            // get return instance
            addr = *(int*)buf;
            struct sockaddr_tipc to_addr;

            to_addr.family = AF_TIPC;
            to_addr.scope = 0;
            to_addr.addrtype = TIPC_ADDR_NAME;
            to_addr.addr.name.name.type = 226;
            to_addr.addr.name.name.instance = addr;
            to_addr.addr.name.domain = 0;

            sendto(sock, buf, ret, 0, (struct sockaddr*)&to_addr, sizeof(to_addr));
        }
    }
}


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
