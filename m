Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DF27385A3
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Jun 2023 15:48:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qByCA-00067O-5I;
	Wed, 21 Jun 2023 13:48:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qByC8-00067H-Ij
 for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FzJ7V2iIN1cfJWm4GokCowNYbzuxC0vTMJnjgzqpOi0=; b=kdl/G20d69JLCv59q1xXtMxItm
 eXAxvTnAyTrvFiZ+YOlcpeUlKeNG6VFzSJn9yUfccJWZV1p+JSimg2Yo/HJULfqiFczKmI4SU1bNL
 YvFZAkzL6ercAyJXBsAoII5lzX3qT2H5SUb2YJcF3uCve0YTReX/VSOvbhz4IYM9Jop8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FzJ7V2iIN1cfJWm4GokCowNYbzuxC0vTMJnjgzqpOi0=; b=VoycaRqdHf2yaFGUjp/m2GFnIi
 azWHxzSIl6sT9g2eu2zLcqNV/17VIKmzyTGlyDODPa50LiKrAV+wnBct5YmN0K5gxCZjl5x2Ll7TE
 hzqQTbBObsofebMnOOXuSAlHE+MaG/bLihgFlGh+x/SMUozyqOIGj9MGi0l1Y58uhcqo=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qByC7-00AgT8-JQ for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:48:25 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Wed, 21 Jun 2023 08:48:17 -0500
Received: (sendio-qmail 32617 invoked from network); 21 Jun 2023 13:48:17 -0000
X-Sendio-SenderIP: 104.47.55.169
X-Sendio-RemoteSenderIP: 104.47.55.169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687355296; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:Content-Language:msip_labels:
 authentication-results:Content-Type:Content-Transfer-Encoding:
 MIME-Version; bh=FzJ7V2iIN1cfJWm4GokCowNYbzuxC0vTMJnjgzqpOi0=;
 b=B8slx5n+6vzqMzkoueBpuy+dOrIigJPmhlnEXFXnr6p/+MIRu/tTcxtFaE/7GE
 ghtEPUIisF4XGZ++uijVPvcY8KE1EyZntXDNQ1IL9AtsZPIJsm1IRplCSMwiz+c8
 z2NhvXW9lgU6X8xkMtquL7uIedaVvwXGXpepPBOxibRrU=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.21.132717
X-Sendio-LASED-Spam: NonSpam
X-Sendio-LASED-SpamProbability: 0.081286
X-Sendio-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_2000_2999 0.000000, BODY_SIZE_5000_LESS 0.000000
 BODY_SIZE_7000_LESS 0.000000, CTE_QUOTED_PRINTABLE 0.000000,
 HTML_00_01 0.050000
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000
 MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000, REFERENCES 0.000000
 SINGLE_URI_IN_BODY 0.000000, SUPERLONG_LINE 0.050000, SUSP_DH_NEG 0.000000
 TRANSACTIONAL 0.000000, URI_WITH_PATH_ONLY 0.000000, __ANY_URI 0.000000
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __CP_URI_IN_BODY 0.000000
 __CT 0.000000, __CTE 0.000000, __CT_TEXT_PLAIN 0.000000
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000
 __FORWARDED_MSG 0.000000, __FRAUD_URGENCY 0.000000,
 __FROM_DOMAIN_IN_ANY_TO1 0.000000
 __FROM_DOMAIN_IN_RCPT 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000
 __HAS_X_FF_ASR_SFV 0.000000, __HTTPS_URI 0.000000, __IN_REP_TO 0.000000
 __MAIL_CHAIN 0.000000, __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000
 __MSGID_32_64_CAPS 0.000000, __MULTIPLE_RCPTS_TO_X2 0.000000,
 __NO_HTML_TAG_RAW 0.000000
 __PHISH_PHRASE10_D 0.000000, __PHISH_SPEAR_SUBJ_SUBJECT 0.000000,
 __RCVD_FROM_SUSP_HOSTNAME 0.000000
 __REFERENCES 0.000000, __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000
 __SINGLE_URI_TEXT 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000
 __SUBJ_REPLY 0.000000, __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_GEN 0.000000
 __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000
 __TO_REAL_NAMES 0.000000, __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000
 __URI_NOT_IMG 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000
 __URI_WITH_PATH 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687355296.32603.1
Received: from unknown (HELO NAM12-BN8-obe.outbound.protection.outlook.com)
 (104.47.55.169)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 21 Jun 2023 13:48:16 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVt+BClE30lWyKyek2kl2R3dogIXgr3IeqlHpGQQy4NvkQsUhBoq1Tls5/RLSjgmMheEnPj7Ydx+zb11jd2yqsM5FitylUSGUAzXwGjZi3Cf02qmoyX1ye/Nm2aJBQaR8p7qrQ0RSIja4k6EawAI6yUWj/xNNXzDhwYS100pB5M4ped46vRSDGaDAH19mApIN5hdqkH+1S0aVCS1c/4ZO1gAzfU/evH/R8T3qwDFIm1tESFy4Ci5KUGxNFWnlQyZmNm85nKdmvZlyti6vm++45KlUjyq8oFpanqf4bBfeZsLaBmlhYS18EIBLV5B7cwf7QDz234/yyDDHLQAI29CvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzJ7V2iIN1cfJWm4GokCowNYbzuxC0vTMJnjgzqpOi0=;
 b=CSgyqeQrM5Q6GDCm9hOb692OlqeVSsx6hUrPzOeIchY0vsdTPLAktYqTCqDiZKVzRlmgdjyo3VEcKqEx6ebz6spmbKaan5xVLnur2eBky9yYpRmBl5CnxZOBIwxRqZ+rE3itQi5E0mLGcqKnoQQUje9ioJjZio3VmM/jJyJxrgS7TUFL4T+DYml5hVYT4w9p8B0T0ADAVBuLxFhDhPKQ/oMa+s/FIL32vZnUOQ9UaqLh3kROXIDFWJFKtKQbB6HfDEzPZIqkDIpPsHnPI6SCP/H6GtCHsbUvijC16xYyJ5WSLlrc0M2w7QZJiNlBxnJ5/HofYVWKqZ2H9/7G7CBflQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by BY5PR13MB3811.namprd13.prod.outlook.com (2603:10b6:a03:22e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 13:48:12 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Wed, 21 Jun 2023
 13:48:11 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Rune Torgersen <runet@innovsys.com>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cA==
Date: Wed, 21 Jun 2023 13:48:11 +0000
Message-ID: <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|BY5PR13MB3811:EE_
x-ms-office365-filtering-correlation-id: a82b450e-78b2-42ef-cad2-08db725e278c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7VIgk8k/rik4CSqIATqC0/ZkPBafD3r44OJ9YYS3fHvua3ABF35SXPZo/+bocky6rnyyuVPOx8vJRokYZZiG5YyRrU8xyPewi+57tRzjbzBE3C8o4+eKGormXmqWTQMIv7hzuIwwhmNkFnzg+osSjUokuJLSvbZohYHzS1J0amtvn7L0MnitJM35o25r8OO6XHQok0cl7GazLshwgAPXEOpXW9non0uXrGjsKQsdZyHemgL5Gmdnk8ywLrpxgEtzvZ8g/AEdpSluBMhCBrKEBd42jVjfaU0FkIU2ZRBZix7vbh5KALSjBq+GW2nYbsRJRNi6Rn+f2H42u2lJRaRerQgSklWSR8Sx7mAXG5toJSo/VfYKLv4IfZ15ivZeAlt5K76xjzVhNjqMpARWjcWvnL/k46XkxJfC0YKmjLYpQLBpLuIP5zHsslO/hOL1RCGjjWVpYBDwgFyC11VRFDwJdZW5x3CQNKg+hhPpeh9TImKZtE8hYTLrikFLuSlyOpyCOsLdflw9udO0iKberg/VJIcT2ADBoL2tgkRp2FRlTDCIy0QX99DKnLYRmjoDMksFzAJrAs4MmGoA1ITG3L9Lo1NG+qFdWhvUoWCDYOWvl1NPeSrcEgna/kMcKNIe4838gt2mh6m/y4kOyI4a2s1/nA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(366004)(346002)(136003)(376002)(39840400004)(451199021)(53546011)(55236004)(33656002)(66556008)(38070700005)(5660300002)(52536014)(8936002)(8676002)(86362001)(41300700001)(64756008)(66476007)(76116006)(66946007)(66446008)(38100700002)(316002)(55016003)(122000001)(966005)(6506007)(9686003)(2906002)(26005)(186003)(2940100002)(15650500001)(7696005)(478600001)(83380400001)(45080400002)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PLZ6qZILplzW1IdkhKsKYqIohnwdBCrI46wcGm1Tzz2J9RN+BNmiTA7NuC2x?=
 =?us-ascii?Q?GWNojctpvfoxveIDku2YfmJ1PFyFqx3UmKSCA/nMi6ahMeXOUdvrePeEvS5Z?=
 =?us-ascii?Q?EW7RMB6q2crkz8cfpzknx/fJTgRvCTsqJF58cJrE20/Hj/9cuhnjkmit+qfl?=
 =?us-ascii?Q?vUtGIxaFFrxMndxLhBrT+YbePkl1MGo0bQBCl5FMTeh3x5aoduMJmxB4p55b?=
 =?us-ascii?Q?lbqGKnXGjnq8RcPV2tEYEtIGWDF9tVF2dF4BnvhAOeo5zzvbDOr8Ub0HVsv/?=
 =?us-ascii?Q?YU1/Vlu62Gx6qtp02ZZLBsWKBCohgp+L/uLg6zRQsmP/TLfyGpq79fSynzbD?=
 =?us-ascii?Q?MssqVLmgd0YA5cHSbskJU60XlOPfKMano8Hb6vLM232YYORtCEJgdg79g1NS?=
 =?us-ascii?Q?EgK5Oc0Qwb8V8qJ/zFiJed/NxE2gT4veF20bubQAEXNwQQOgFiDvRahhDAaw?=
 =?us-ascii?Q?Dy3eLyIjeI7A8eoyvAbGO5MxRFE1fxalna+mk9mrQDBl5+ZbLpIoFt2NB6F3?=
 =?us-ascii?Q?one18pWgrEFXj1/kqL6hxFIM3U99pURLkcn8AGXT9jHfIk+Rs3qjkDaQvnau?=
 =?us-ascii?Q?pERgdhoQMFXUczYvpeWMdTW1qOZaSzJNQIWcCmMrjDntqeFCGrNv5gRObdvQ?=
 =?us-ascii?Q?4v+04vENSGYqzmrSYZ4W+QUBQ3jpwHqY0hXQ7o5+/86y1qeWfyLqphI2iMwt?=
 =?us-ascii?Q?SUwsNH5tQVvzLS08H8kqN8ZNiYWnI3aJwA2L+VSyzlH56VItY3KoWFG4IoLE?=
 =?us-ascii?Q?0FFLpGIHFsyRiNTMWH8gkOCGFky1aDlNBmmCexyawXPxKSNIw4jE9mkZYN8O?=
 =?us-ascii?Q?zXwm9U+N+mx07roLVqwmldm//59RPxvQkfFe4P2B0cq+cZKm322uXTQkg6Sd?=
 =?us-ascii?Q?gl55lQEylPZ8jSiva9Bvd/HHRVWtfnNS6UFsA0NuPZXz/GFw6UHBSdbMCfh4?=
 =?us-ascii?Q?YRv7SGspdufVTm4ocqOwYX1qFZR3bGdwCrcXDYloNvZNM/gSwx7elgbXpnmk?=
 =?us-ascii?Q?Y1MHwD20822uVHHLmpxIr50bQYSnWXH+krj/vlSnR+ZZxc/qBGgrHEhCMkxz?=
 =?us-ascii?Q?t9c8v8MavNOovu/ngxYHCb5FcYx+3YEMyvsAvlF2e01dB+9bYk/f/TOs0LUQ?=
 =?us-ascii?Q?GUDtzCF32qS1MTI9elrKSYNpuqs6Dm/hPdjj2m2U8JT7+TJoS9JPxCSJhBus?=
 =?us-ascii?Q?rWMJF5YDYkN1bYBpEimUb6ZvefAkGwjPG6htqLs+ezNiV5LpIt7EqMMBPSMo?=
 =?us-ascii?Q?NXqGUoezL3WqpuS4uNrKqhNBi1qXBXpBOeUWrtV3eLzC22v6hKXdRZG497QK?=
 =?us-ascii?Q?CmQdYhx7yEiskFaWHIF/hlxfn+dNWf6OEgK3AGE1TVG/6FVXIyRQAJZ0eyL4?=
 =?us-ascii?Q?+OgcxaFsq3NAoa1OVPgkNC9KSXuHi4j/TD75BEBoa8Y+5ppXePRhYD0FvxCO?=
 =?us-ascii?Q?fZDK3jUKghG9VnrmLpZRiCHFjgdp3MzYxpOlkQqKcKeofANVVJ9PX904i6sE?=
 =?us-ascii?Q?tr3UFkTZAxgQ3soBUsVIyyvUmhhIp6q0mYEx0o4x+TuM32c+e9k8a1DNMPBW?=
 =?us-ascii?Q?i4L2XyM6JvwAdYLS7Q7BnB+vpRDg/Y6cFj+ID2U6?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a82b450e-78b2-42ef-cad2-08db725e278c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 13:48:11.8893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bH4qPwcAhhmlyOFC/lhswbektnkQ7d1I2nbl2Jc5o1IF5fI5pYWqGXwXUnE7G8BJjybX5UOGmaJ+Zg4mGF/xCFDgbVFf+uyr59phw/t75sY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR13MB3811
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Also,
 since the publish and unicast is not guaranteed in order, 
 should not reception of a unicast data message before a publish update the
 publish table on the receiving end so you can expect to reply [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qByC7-00AgT8-JQ
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Also, since the publish and unicast is not guaranteed in order, should not reception of a unicast data message before a publish update the publish table on the receiving end so you can expect to reply back immediately.

Take UDP as the other datagram protocol. You are expected to be able to send back a reply to the sending socket immediately upon reception of a message, as by receiving it you know the farend is up.


-----Original Message-----
From: Rune Torgersen <runet@innovsys.com>
Sent: Wednesday, June 21, 2023 8:18 AM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; tipc-discussion@lists.sourceforge.net
Subject: Re: [tipc-discussion] TIPC out-of-order publish message

This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.


Example is a extremely paired down version of the problem.
What it means in reality for us, is that if we send a message from a newly opened tipc socket to a different node, we cannot send back a reply immediately, as the tipc stack will silently throw away the message because the publish has not yet been received.

Problem is, this is in use in applications we've been selling for years (originally released under ubuntu 16, and has always worked correctly until now. We've used TIPC back to 2.6 kernels, and never had this issue before.

It is basically not feasible to rewire it all. We have a workaround right now by querying the topologyserver before each send, but that slows down everthing by several orders of magnitude.




From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Sent: Wednesday, June 21, 2023 1:41 AM
To: Rune Torgersen <runet@innovsys.com>; tipc-discussion@lists.sourceforge.net
Subject: Re: TIPC out-of-order publish message

This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.


>        if (-1 == bind(sock, (struct sockaddr*)&listen_addr, sizeof(struct sockaddr_tipc)))
>          perror("Error opening TIPC socket");

 >       *(int*)buf = addr;
 >       int rc = sendto(sock, buf, sendsize, 0, (struct sockaddr*)&to_addr, sizeof(to_addr));

You are not recommended to design your application this way.
Published messages are TIPC internal messages. There is no guarantee that they and user data messages are sent/received in correct order. Especially, since kernel 5.10, Published messages are sent on Broadcast link whereas user data messages are sent on Unicast link.
These links have different send queues, sequence numbering engines etc. So, what you showed in TCP dump is an expected behavior.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
