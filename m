Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5373BFAC
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jun 2023 22:32:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCnSX-0001N5-Fu;
	Fri, 23 Jun 2023 20:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qCnSP-0001Mt-HH
 for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZVJSvLUXj3PMZyjHLepCmzuS5NFebEMiteRockVzAfU=; b=etAyPBbgXrlQMBff5hKBBU4NJq
 tlIRtbpHUaP8vGsMOb54+b1Y2IYSeGo1JmaiqPlBSX6rvCBxTNsdJJBZfB+kyKGDHTus9OwiSGDez
 LszBklKODolS+S54f0XWDBp0YdWI276nqOjScKhAsTdony8M7J1gKj4Ktb7m+Sx2ULds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZVJSvLUXj3PMZyjHLepCmzuS5NFebEMiteRockVzAfU=; b=WQDx459I7VJoE4Xy93ceTPlVRJ
 J7Z6XOdLeKveIMQDV256ubfUF6RtKuy2pzAcLCtkaamwJiiEktTj/QQcpjjK4rHPr00d1R1egpsyl
 vHUIe8yIGMstZxrPvcYI+9n65lodLKckpkCZTh2rV9UakeYKVw2KvnaG1B9MBnNMIXnY=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qCnSI-00Cfos-Ih for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:32:35 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Fri, 23 Jun 2023 15:32:17 -0500
Received: (sendio-qmail 9896 invoked from network); 23 Jun 2023 20:32:17 -0000
X-Sendio-SenderIP: 104.47.57.45
X-Sendio-RemoteSenderIP: 104.47.57.45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687552336; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:CC:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:Content-Language:msip_labels:
 authentication-results:Content-Type:MIME-Version; bh=ZVJSvLUXj3P
 MZyjHLepCmzuS5NFebEMiteRockVzAfU=; b=SGY8UwDQetxXu/2RM8ljiV6AEAn
 FtBrn2FH/HiYGBTGhkEjanarK3s/OUutdZ+6MX0PgWwMt6jl91zId8EHojoo0827
 Va6fFTdgCxzkTD6iRurizZr6GA0PfuttS1xxA6KxkPag4POVKFIQwhf8FXvxFEKw
 5TqLkZfK+KLM0KKo=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.23.195417
X-Sendio-LASED-Spam: NonSpam
X-Sendio-LASED-SpamProbability: 0.102018
X-Sendio-LASED-Hits: BODYTEXTH_SIZE_10000_LESS 0.000000,
 BODYTEXTH_SIZE_3000_MORE 0.000000, BODY_SIZE_10000_PLUS 0.000000
 HREF_LABEL_TEXT_ONLY 0.000000, HTML_50_70 0.100000, IN_REP_TO 0.000000
 LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000, MULTIPLE_RCPTS 0.100000
 MULTIPLE_REAL_RCPTS 0.000000, NO_FUR_HEADER 0.000000, REFERENCES 0.000000
 SUPERLONG_LINE 0.050000, SUSP_DH_NEG 0.000000, TRANSACTIONAL 0.000000
 URI_HOSTNAME_CONTAINS_EQUALS 0.400000, URI_WITH_PATH_ONLY 0.000000,
 __ANY_URI 0.000000
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000
 __BODY_TEXT_X4 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000
 __BUSINESS_SIGNATURE 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000
 __CC_REAL_NAMES 0.000000, __CP_URI_IN_BODY 0.000000, __CT 0.000000
 __CTYPE_HAS_BOUNDARY 0.000000, __CTYPE_MULTIPART 0.000000,
 __CTYPE_MULTIPART_ALT 0.000000
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000
 __FORWARDED_MSG 0.000000, __FRAUD_MONEY_CURRENCY 0.000000,
 __FRAUD_MONEY_CURRENCY_EURO 0.000000
 __FRAUD_NEGATE 0.000000, __FRAUD_URGENCY 0.000000, __HAS_CC_HDR 0.000000
 __HAS_FROM 0.000000, __HAS_HTML 0.000000, __HAS_MSGID 0.000000
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000
 __HAS_X_FF_ASR_SFV 0.000000, __HIGHBIT_ASCII_MIX 0.000000,
 __HREF_LABEL_TEXT 0.000000
 __HREF_LABEL_URI 0.000000, __HTML_AHREF_TAG 0.000000, __HTML_BAD_END 0.000000
 __HTML_ENTITIES_X4 0.000000, __HTML_FONT_BLUE 0.000000,
 __HTML_HREF_TAG_X2 0.000000
 __HTML_TAG_CENTER 0.000000, __HTML_TAG_DIV 0.000000, __HTTPS_URI 0.000000
 __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000, __MIME_HTML 0.000000
 __MIME_TEXT_H 0.000000, __MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000
 __MIME_VERSION 0.000000, __MSGID_32_64_CAPS 0.000000,
 __MULTIPLE_RCPTS_CC_X2 0.000000
 __MULTIPLE_URI_TEXT 0.000000, __PART_TYPE_HTML 0.000000,
 __PASSWORD_IN_BODY 0.000000
 __PHISH_PHRASE10_D 0.000000, __PHISH_SPEAR_SUBJ_SUBJECT 0.000000,
 __RATWARE_SIGNATURE_3_N1 0.000000
 __RCVD_FROM_SUSP_HOSTNAME 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000
 __SCAN_D_NEG_HEUR2 0.000000, __STOCK_PHRASE_7 0.000000,
 __STYLE_RATWARE_NEG 0.000000
 __STYLE_TAG 0.000000, __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000
 __SUBJ_REPLY 0.000000, __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_GEN 0.000000
 __TAG_EXISTS_HTML 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_HREF_DIFF_LABEL 0.000000
 __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __URI_REDIR 0.000000
 __URI_WITH_PATH 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687552336.9889.1
Received: from unknown (HELO NAM02-SN1-obe.outbound.protection.outlook.com)
 (104.47.57.45)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 23 Jun 2023 20:32:16 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORTV8HAGDEhbT0yvF+GB7FWykM176H5bAWwlR7sEr5+pXvjLNTcG4dlLoNgIzvmjVwZsiSj7SaMbJRQ4TMTVHGnwl/475hF9ggPRXSguksogj9qVZHoRQVOUFgG9VpfhQwZ5kXz26z0WbIAeOv/Guqsayd18fHKKHp+inzgMXo9kYQTZ7lSttsn0pglN6tg4zxFnuaNh5d6ASljjQ46Ivj1KiiE/g/lGyzpZln9vNBenq5w88OtehocZiFOFeG2MiwXvpbkuI2Cc3+PduwaaYY3F1awA0oNrJAQbt08JfGkCzKDKo43WG5GbQIKeULWUCb8/OPdPY0UEKcF/rZb05Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVJSvLUXj3PMZyjHLepCmzuS5NFebEMiteRockVzAfU=;
 b=SGkg0a67RaFKpg61qWKuTVOnmQlR5ijkcOxV1evv6zPChJQUdDA4Xtp68cq12KTl6YMKvbE+j206zl1hkfN2hzN3YZUsDUPMhhliCRYXqy19+3peK8/Oqw43MAQ2A+dW8XHWbI92e7GqcaR76/tKa9+pwOeg/3CZYTiuy8C3/aB/zKc02w9v1murXzcU1Q7imom1Z9UrAsfnH1GinR/KBUbB9qnDMw8CTsu3qRVzs+vlDTGFCdYPmO4GQWlfYHTZfVrnwiS1UyK5USR122x6LbcIgbRFktnylsA12NAI89FAGiRN40wv3wRq+KgBsMofMvwCsOF6/U0tkO0agfUrTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by SA1PR13MB5420.namprd13.prod.outlook.com (2603:10b6:806:233::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Fri, 23 Jun
 2023 20:32:13 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Fri, 23 Jun 2023
 20:32:13 +0000
From: Rune Torgersen <runet@innovsys.com>
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Thread-Topic: [tipc-discussion] TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1AAfPWUAAP7e9gAAA4nAgAABVvxsAAIpKEA==
Date: Fri, 23 Jun 2023 20:32:13 +0000
Message-ID: <DM5PR1301MB1995C9CEEF659A0706074DA4C423A@DM5PR1301MB1995.namprd13.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
 <DM5PR1301MB19950FDA786A083190E43FCFC423A@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <AS8PR08MB776790384124D17DE3917F368523A@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB776790384124D17DE3917F368523A@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|SA1PR13MB5420:EE_
x-ms-office365-filtering-correlation-id: f50d247f-b593-41b1-7b61-08db7428eda9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9bARngmH781aa9LL59aJY5eToO4uHQ2Miq8vQd5dfIN8XodgDnxzX+Ikqg0UfIhejpkkZjIQetdeuFKgbI5ol/PEBtIsEEW3qATgrjHEaWu5j6BKXlpbMLEpzeWPYqmX7bvnoFp82BoZOQH0YwSHqTWAhyHP6Ika7a2xv/QHkMWwz37oD10wBIubfCYEkVuhr5o1C25u2ijKyqZJZHCHQ4ZtPtJ8T56JUXa3WlS+q6MFf460RRvfUcJATf2NXkM10APBw01khlX+OU7Qm5nmGksvALzBPzhBPhKZ1hiOcjZmHIXK1gvOLS6s8UExZ3y0eBYq6/dXsadPGFNAniCZgqhzU1Oysmzjc4sIcutiLwWPqxN5RInfsCuI9miBMUj2Ykoz0+3RG10qcnK3cM0RIZ1sUIH7hADe4nprNbbrGp+mwE0A3qzHCJi0YbkbylspnbElFzwXkM/4o1kVZlbk6YbCTeL0gfQ/RM4RnsUgiB+91sQ1DXwYc2GjtP1i71uO7uvt+9v085cBuOCfoDXLq0/h9FmWOcDj8iCWyTvI8JuEGflDdECzu01+UcLmdn+hj0wMl3IgXF12ZKq/LxvRdQoP8fLajNqsrZr1xtHb6F3f+tciv4YnZ6tIguzGXUvtJ4lJ0PuIgH4mFG85Djgzrg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39850400004)(366004)(346002)(396003)(376002)(136003)(451199021)(53546011)(55236004)(9686003)(33656002)(38100700002)(55016003)(122000001)(186003)(83380400001)(6506007)(26005)(966005)(2906002)(8936002)(40140700001)(52536014)(15650500001)(8676002)(41300700001)(4326008)(316002)(71200400001)(6916009)(7696005)(38070700005)(478600001)(64756008)(45080400002)(66446008)(66556008)(66946007)(76116006)(66476007)(166002)(86362001)(54906003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G9/mWPfcr2+8yKuMuXTqoU5ETnO5DNFmslT6MnSdF5pifVcnbLWBe4Xabudj?=
 =?us-ascii?Q?ETuW8p8Bp3mg7NooLt5wQY1Rj0dAI5dECNGraeqWfodAgUE7xjI6d1TvgXk8?=
 =?us-ascii?Q?5EY6aHl+Le3RPf6VhbIBzgWv79KEHanNJR8ABHaSqO4ikkg72leVjSa/3r3i?=
 =?us-ascii?Q?RijRGn15QxKZKqdfHAn6UsYaTkFpkPbjagniCu/FVFXDDD6NJGsWxMkGsU77?=
 =?us-ascii?Q?/36dcDy4zFa+tIic/2pcJoCLT0hRONtSATF0BVYyxLdmZDjtpKME41gyvfJI?=
 =?us-ascii?Q?VaxfEkYb/ElOOzznCHwBrSDS7J3qmZkhVrF2Pe+bZG9A/hDli6V175YS97xa?=
 =?us-ascii?Q?dKzgg73b6jbo07i/ZveWVm26q3O0dSwP1P6g+NiJIyNX9h63O8z/reArI2MX?=
 =?us-ascii?Q?/PrMNlJH8S7yHOgdZWyzKLKXCQDShH8JOGuFGFk2he0SVuWh8yT1YEsmddgc?=
 =?us-ascii?Q?AzgA2CFiZMt/+BuOzHs/T9VQh/9RDwUNOjDAGzNf/vfi0zC7i4sedCkRavEm?=
 =?us-ascii?Q?R9x313qobUt3FGsD+mbVUzhcP/W2JH2GgbfaBsxYze1jX0K5U739d6yP9Wlu?=
 =?us-ascii?Q?RPMIv+vbJoRRk8W8cRyYnDmR29Dq1YCbMAgH0Zbc1vaGnaRamvJoylWuQJix?=
 =?us-ascii?Q?L1Fjy2wdWzEViighz8sLkBtt5p1VrK/aTBMq+5PbWAHMl2j/Jsoqsxfl0btV?=
 =?us-ascii?Q?ptCgdh+Ev6t6z0j6NqAd2YXKQ2HxcbPv6JqeiG7e8JCCcD9lK3gIqX+TY71G?=
 =?us-ascii?Q?rcoFEQmLeS2EhR5Zh7JvhcLS2xvSUU26baCPdqDGQ+4rt6ZXtIcyHxHbNdm+?=
 =?us-ascii?Q?DBW0M/fs3+bDo6a18YyVLP8Nl+49JDv+BEt+Bv3c9k37JTeZ4+851aGgMaCd?=
 =?us-ascii?Q?YobQnS/+CrCzWoAib0TWXo+IZIsc7L5KZGAghllcZjbKo/LAi9NgNVRVuJgY?=
 =?us-ascii?Q?KrRSPbz5zOPhluwMkrJvd/8cxd6ZY/8ejWQW4wukL8ef0SZ4IL4pQ8oMMaqm?=
 =?us-ascii?Q?lXpSSGiF7wv2iZxAakrAzEJZYGGtfiA8laIlf5ZPnGumr8V0dAnXJ2dXJObj?=
 =?us-ascii?Q?XuDhAM7YFthvBWRSlXGtxfI1jRCYsUPKoDMtUL2RwaA2D6Blpe5XigBsyvCi?=
 =?us-ascii?Q?5TAGLV5UWo7TLW0xFSIBzZ3kA7J9ePeOidCorEnql1BW5StBRKg5nJEMdnU9?=
 =?us-ascii?Q?bJrfVsks0GyJ9VpZBIuC8/MhoIQ8gSmyHb4+RR8C/gmX7uVHVCWToKmqYp5M?=
 =?us-ascii?Q?+rHvnMUU5c8EOPwtF/6+kRhN3s7IP87haCX9+IL1LjKHlhenDc5r0nl7KjAV?=
 =?us-ascii?Q?uPwHsmxy7c9XrNwBQTJEPwarxlC8ydBVJ5niGUUudGyvdTVQBQpPnhgaqB7e?=
 =?us-ascii?Q?HhOwLNcEbYMxxtytJbutQbSGm7Pa5FL8/yq6YINIDUPC7k6fdFTxHzn/uIzP?=
 =?us-ascii?Q?2Pu3jtskkLydcL4+Jf3zNvXf3TQHkJ4OzNOym/VO2rCUcY+wI/3xYvYJ0BIo?=
 =?us-ascii?Q?TS4soAL5apcDzE31nx8j/vOHRTYgPTWjcSy2+qVkQqj69m/hJvHHBVkJHeta?=
 =?us-ascii?Q?TgTTvXqbgHTe/Hj6ya2fap+bHA23Rqc8X15R8Oyw?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f50d247f-b593-41b1-7b61-08db7428eda9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 20:32:13.7370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w6lgUVA73vbxEOhk2bB3cys5R4Uf0k5Oia7U+OXE1ETTXgDn+am3NXAKaAd3CBJrcHNTzZysJqk7zJHn61nsZBACkGQPTgBVbL88WteXBG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR13MB5420
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thank you. Learning something new everyday (used TIPC for
 close to 20 years, and never realized you could do that...) From: Duzan, Gary
 D <Gary.Duzan@fisglobal.com> Sent: Friday, June 23, 2023 3:24 PM To: Rune
 Torgersen <runet@innovsys.com> Cc: Jon Maloy <jmaloy@redhat.com>;
 tipc-discussion@lists.sourceforge.net Subj [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCnSI-00Cfos-Ih
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC out-of-order publish message
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Thank you.
Learning something new everyday (used TIPC for close to 20 years, and never realized you could do that...)

From: Duzan, Gary D <Gary.Duzan@fisglobal.com>
Sent: Friday, June 23, 2023 3:24 PM
To: Rune Torgersen <runet@innovsys.com>
Cc: Jon Maloy <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net
Subject: Re: [tipc-discussion] TIPC out-of-order publish message

This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.

   I see in your sample code that you are using recvfrom(), but with a NULL address. If you instead pass a pointer to a struct sockaddr_tipc and an address_len of sizeof(struct sockaddr_tipc), a successful recvfrom() will set it to the address of the sender, which you can turn around and pass to sendto() in order to reply. I'm using this in my own code, and so far it has worked fine.

Gary Duzan
IT Architect Senior
GT.M Core Team

T:  +1.484.302.3226
E:  gary.duzan@fisglobal.com<mailto:gary.duzan@fisglobal.com>
FIS | Advancing the way the world pays, banks and invests(tm)

________________________________
From: Rune Torgersen <runet@innovsys.com<mailto:runet@innovsys.com>>
Sent: Friday, June 23, 2023 4:07 PM
To: Jon Maloy <jmaloy@redhat.com<mailto:jmaloy@redhat.com>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
Subject: Re: [tipc-discussion] TIPC out-of-order publish message

> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com<mailto:jmaloy@redhat.com>>
> On 2023-06-22 09:30, Rune Torgersen wrote:
> > I can easily make it happen with known service addresses too.
> >
> > We have shortlived processes that does a query:
> >
> > Open 226 1
> > Send query to 226 2.
> > 226 2 sends response back to 226 1. - Message gets dropped.
>
> Is there any reason why you don't use the received messages original
> socket address instead of its service address?

Basically because we did not know you could do that. Will have to look into that. Is there any example code for that?



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=05%7C01%7Cgary.duzan%40fisglobal.com%7Cdb99e789c7df49b57f3c08db742596b3%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C638231477021853799%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=EwRsvge2GyFWYIoLAMhh2KT%2BV3x0x0Oe4FGxxfxQPTo%3D&reserved=0<https://lists.sourceforge.net/lists/listinfo/tipc-discussion>
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
