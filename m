Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF473A1DB
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jun 2023 15:31:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCKOo-0006Kr-M4;
	Thu, 22 Jun 2023 13:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qCKOm-0006Ki-Td
 for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 13:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S4JipMFE38/RcMwMHI1Z9mfQVIILKv2svpM0e3FX9Pw=; b=ZObG3trEdLROoIJ5Rsq/AvVfOu
 jy04NhN/USBHiLqxAz2bsnP1LGlPcTUyYLNTjm1bvn/uznA2QKItCF3HTM8I9M2whN5GvxSxrjdfY
 fuTtU8/F7iJqdJq4+EX/comtiMMgr9tMIbg/NoWEa+fO2Z2O1O7Vbl4TUfVmbGZxe5Vg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S4JipMFE38/RcMwMHI1Z9mfQVIILKv2svpM0e3FX9Pw=; b=fCYpizjH4JXETsAmL0RFfHKErG
 Hwc9bHf4uzMZo28F3JeGimOEM3mIyHXJkmh7fhNpNa/oqzOgQgTCSXlHwaeVv1kVG1clud4Mf3njd
 cZlu+UZr1Q56QZXvIBXbTNoZdsayFL7KaCIBSkyO9rpVSmt01wVEsiFX3HYrJvXuwzx8=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qCKOk-0003Rn-3S for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 13:30:56 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Thu, 22 Jun 2023 08:30:47 -0500
Received: (sendio-qmail 28092 invoked from network); 22 Jun 2023 13:30:47 -0000
X-Sendio-SenderIP: 104.47.57.172
X-Sendio-RemoteSenderIP: 104.47.57.172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687440645; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:Content-Language:msip_labels:
 authentication-results:Content-Type:MIME-Version; bh=S4JipMFE38/
 RcMwMHI1Z9mfQVIILKv2svpM0e3FX9Pw=; b=seVgK/1aTma9Q0X2t13wRyHw/+7
 wIyHva0Q75VWsFZhNQYES4YCWybu91WR/hT0U7rzK5rRMaMWwcXuTkuDSuVj/BHt
 VjFK4ylP3pThImH7YkQE5xd9XcfeRFC4iVk59ec45srERRfj/MNCa2nAN28w5bNR
 otsSk/CzI5VDCx2c=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.22.130617
X-Sendio-LASED-Spam: NonSpam
X-Sendio-LASED-SpamProbability: 0.081286
X-Sendio-LASED-Hits: BODYTEXTH_SIZE_10000_LESS 0.000000,
 BODYTEXTH_SIZE_3000_MORE 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000
 BODY_SIZE_6000_6999 0.000000, BODY_SIZE_7000_LESS 0.000000, HTML_50_70 0.100000
 IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000
 NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000
 REFERENCES 0.000000, SUPERLONG_LINE 0.050000, SUSP_DH_NEG 0.000000
 TRANSACTIONAL 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BODY_NO_MAILTO 0.000000,
 __BODY_TEXT_X4 0.000000
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __CT 0.000000
 __CTYPE_HAS_BOUNDARY 0.000000, __CTYPE_MULTIPART 0.000000,
 __CTYPE_MULTIPART_ALT 0.000000
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000
 __FRAUD_URGENCY 0.000000, __HAS_FROM 0.000000, __HAS_HTML 0.000000
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __HTML_TAG_DIV 0.000000
 __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000, __MIME_HTML 0.000000
 __MIME_TEXT_H 0.000000, __MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000
 __MIME_VERSION 0.000000, __MSGID_32_64_CAPS 0.000000,
 __MULTIPLE_RCPTS_TO_X2 0.000000
 __PART_TYPE_HTML 0.000000, __PHISH_PHRASE10_D 0.000000,
 __PHISH_SPEAR_SUBJ_SUBJECT 0.000000
 __RATWARE_SIGNATURE_3_N1 0.000000, __RCVD_FROM_SUSP_HOSTNAME 0.000000,
 __REFERENCES 0.000000
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __STYLE_RATWARE_NEG 0.000000
 __STYLE_TAG 0.000000, __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000
 __SUBJ_REPLY 0.000000, __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_GEN 0.000000
 __TAG_EXISTS_HTML 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __X_FF_ASR_SCL_NSP 0.000000
 __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687440645.28077.1
Received: from unknown (HELO NAM11-DM6-obe.outbound.protection.outlook.com)
 (104.47.57.172)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 22 Jun 2023 13:30:45 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6PxIvu6fV+HHaPKlbX7WGnK6WSFrpwSXJe5dZpVaDORXTo+z1ExmOzlP8lL8Qf8BHPLIwhAlF8SQ3G9ppCCheHpY7Ew6FApG1eHEtuHWYTXUDOPKdTtiFRrA22I96CO127iB+zVpxJdDBxjfTRcHawgRjMdLl+Pg35XIi/Q7Xw+GFcWr6BhruPlU81hih+gHFiZO3fJjCeOQQF6vH4stQeuvfe2XCfyFQqcLkRsNrKQwe+Ev+6sHmMUjBe4iK/6xSvhhZN3mp3n0Q7D7L6y6Dsgflu6EVri8+sIgjSmKNyNW9Ne8PbycCHnwv3Nwvj5i4H/etvDuRvESKCu+pIYIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4JipMFE38/RcMwMHI1Z9mfQVIILKv2svpM0e3FX9Pw=;
 b=Bpb2GzFKfmrKmaQnsHC4Pkx818hdp3L1eb4e19clGYD5GujvgR+7EXnjdQpD+WnqIQn0iJ19yNTvYblsoRVPwIPAYhI/5P6CAmr2VmKJNn2e2FwCGNDD21x2jeKnNd7SwsD8kXeWz3BlFkgccsHIJHq8yY37aBPvfAhEgbpI15aIHeCYfGyw2NYIONkfHIwQdYniWlKE0QJfA5i5fpMNRAdXM/uMqrGepce1bbyB7KDMPyMAw7MmJWd7XYExl3RooDVaK0NBcmYx/97sW3iVzr5W9cWNhyHjh0jxJM9F/OJ5FIZq0P+7eXTmvKeLPk7iiczRgn3irLTgi05+lA1VKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by MW5PR13MB5511.namprd13.prod.outlook.com (2603:10b6:303:196::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 13:30:36 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Thu, 22 Jun 2023
 13:30:36 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1AAfPWUA=
Date: Thu, 22 Jun 2023 13:30:36 +0000
Message-ID: <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|MW5PR13MB5511:EE_
x-ms-office365-filtering-correlation-id: d6b3b83c-2891-42e2-cabb-08db7324dcc5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A30arUH2Z8LHiW/H1nCgAFd6yUGkCs87K82SgDFFYRl163f05cuzcnKkVvaL5akd16e2YD0FawcybuUUqnvZiSs0QB2Me60Hd5CFWX7d9doGeUTnUyprTXGoPlfTZQt2OtKgo8i2NSWOSOqhh1EO8KnouLMKskAJ7mGIhznKfH/xXHBvKEwqmHqqzxvhAf3RKgLqPdRf7n2L+VRVdjRDs7lnxfAaIofMIzC02Q5C8OlPMFTDwKPKwTA2D4IZV6JX8hjWyHcssk1ygV9G96hC9zeQfdPCEL4wPdenI7YhAqEdeQVOPBSD414ycuBiMS9fvyz1HMvmbYjYPxH+5rlGr2XEs5jUV5kEsKoTUPglFrQn+9e34yiswolWYBxweAGFbPb1Aw9CTcTto8Q/xc7SZRkApH0HiBf9MSknGdLkH2CNfp1TvgoeATn8SfVfMwNFiBSoeOgvOxdeoGq3VkoV0/Eq4dh8ClLNs9ZtvHrG8HFJRcksyKvybVHM90QUPBGssDEwGrpE0DByHJAcxAD4/okzvifpmqM3WpFAQhN2bbGWabKdovr12ZbHVa5GlCvSx27Te5Vb1ZVyV3lcrZpTku/SaMcNQkWVMhHaKVDE/c0o7M+9OKeIOoJQy5F4NiEEfFkSBQaTxJqrv1GcP8TkSnmGNTlippfB9YZ8V291O7M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(376002)(39850400004)(366004)(136003)(451199021)(52536014)(5660300002)(8676002)(8936002)(122000001)(38100700002)(2906002)(15650500001)(38070700005)(55016003)(478600001)(186003)(7696005)(71200400001)(110136005)(86362001)(33656002)(55236004)(53546011)(26005)(66446008)(64756008)(9686003)(6506007)(66556008)(66476007)(66946007)(76116006)(316002)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1FzF2VOGkQ06dQkMr/VZ5YeYiIc0Ev2ztjY5S8BuOaRxoZzFmPcHXIue2n6W?=
 =?us-ascii?Q?3pMrnSLKq5GGuZUKf77b/CSXcBVHxSescac9KrWTSYlf31Zt1BngLlBJ7Zvu?=
 =?us-ascii?Q?tjPaBV0TTpqihVAfw891wY+IdZdyE7yMV4TZ8Cq9CDKv6GS+01e/wMQIyyO5?=
 =?us-ascii?Q?YAnferjyPevnIfhCaKMfQ8L432mth8E3q5YUCh1P09RboAAR6Pg2TXlMwXl1?=
 =?us-ascii?Q?/S9LNxMWvGX3KnIQfNu0luW3qawGRuVpETcc2EhrJXcRP//ZFYcGUmGf0ygS?=
 =?us-ascii?Q?Lhc2KZ8zHNAG5EX12wHrvuGv3Er6gkIVVAtjp2XPCFdtu42hoy9jFrKA+btz?=
 =?us-ascii?Q?DgYTUd9U4L0PD8btoOFSQbffugmjEBkb5baHUxlI7CogzHpT5JUHUfDCRZZw?=
 =?us-ascii?Q?NOBdqJCqM++IHzraYgK0nniXFzmgQtxZjP6V7Vi+1O1xROTxdrbNipZsJ/QE?=
 =?us-ascii?Q?ddm0Ovv+frjfIswzW5snGYRp/KcXlZuIKooALVVnPqQAawnEAm5gOZ47hTnM?=
 =?us-ascii?Q?GC0xSzBXILFoxJlvpBHDk4u9xh7KwLcHHgN+uWMDeSWgPMCxpwmzTUe1KExg?=
 =?us-ascii?Q?cnpB723qjPo+xIdt4d3ZSNtxkfO1WycuOOZAZTRYT/PQh7FZ7qlXLtHRD6zm?=
 =?us-ascii?Q?nAHDQUFeHi4TLF9x7LS9ytb2Q6AAXGgS/y+cfaNI+B/pVMXeQU0K7XcBim0b?=
 =?us-ascii?Q?xyrMiRxNkfvzvECFxEnWs/b4q/6+K+ju1gzePh01R2gNDI7iBAErJT170qvW?=
 =?us-ascii?Q?DQOcwuVbzZC/EHkqRipPOl0P0GF3P+ev0xmAh8lZyPLOgckeF+nbMv/fElht?=
 =?us-ascii?Q?x7pn+99VMJi05AFPLB4F4I2comqNuw6GSWp0vbxaG3p3/YF2p8hEanytWtbZ?=
 =?us-ascii?Q?ccRGDfLDf6GsasXLipjm6iWw+S1knA8v+TEng2sE6l6nKEkjCsz7C6edJeHH?=
 =?us-ascii?Q?9ABXnLqdIelbUtRXLPvLsNRYmb8N0aOEvQTpQqylcgHo3LhXjp5MGUcJdu0k?=
 =?us-ascii?Q?c5JjbfPxZfCG6wBu+H/M4xvkjx7O5WJP5GFFyS26BWGbKBiDbKTi+ZsLOCtK?=
 =?us-ascii?Q?PdgdyjIU5JUzRYRqbJO2PPkka//VoKzl1mSYYoD9RwKljAHoyT4XyUVNbRMj?=
 =?us-ascii?Q?DjRSpYos2hURww7ItxL0/IPOItO+3ozrtx/K+1CScZN2TPGUiL2cMIqCXrEZ?=
 =?us-ascii?Q?EBnKkzJpFJVl2GADj/bwu3XnD2xQaayajgtBQ4kGM8ssy3YL/G3lKcBdcoib?=
 =?us-ascii?Q?lbGak1+1h8htpv9kDZBBgnbwQ8EgkRTrXIhAFDmz3BJJ0zVPJZFin+bb25Ct?=
 =?us-ascii?Q?hVIRY/NxT0TWoD8B0HWwg8uhujrDpf7i1ejqXyQV/JJHbLC8yrjNV74U3spS?=
 =?us-ascii?Q?vRltG0tzZRumotHd+GuIYnT7vCE7mTTdXWuV2oNHLXkK1J4BBtbWKiw7xzco?=
 =?us-ascii?Q?6DuCJFJGAVeD9YwUflWfLJajBLr7y+i+n5EL6zk9C2p9hyTvqG9ITRbSZ9SN?=
 =?us-ascii?Q?RmZCneZp0j+Cljeu7pYo0+7zpX8fCSVO3D+1lv4DIVYZfkGYSm/g0bUZ9Di5?=
 =?us-ascii?Q?gB5xl4wrpJW0yBR/CWJkEg0SaIbVoYeR8zAZeKWy?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b3b83c-2891-42e2-cabb-08db7324dcc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 13:30:36.2832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r89GJu6C3EOkGprcgR9QDcRwcbzjnGGLje0H+cLkAODSYfUmk5IgS/hj5bGdCPCthYUwIeR24kr6l5EdFFlj3nI/+7frXJAyue8/8graAXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5511
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I can easily make it happen with known service addresses too.
 We have shortlived processes that does a query: Open 226 1 Send query to
 226 2. 226 2 sends response back to 226 1. - Message gets dropped. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCKOk-0003Rn-3S
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

I can easily make it happen with known service addresses too.

We have shortlived processes that does a query:

Open 226 1
Send query to 226 2.
226 2 sends response back to 226 1. - Message gets dropped.

And again, from kernels 2.6.32 (Tipc 1.7.4) to Kernel 4.15, this never failed. Now I can make it fail every 2-5 queries.

Adding a call to the topology server to query to see if a socket you _know_ is open (because you just got a message from it) to send a message back is adding a lot of unnecessary overhead.


From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Sent: Thursday, June 22, 2023 4:39 AM
To: Rune Torgersen <runet@innovsys.com>; tipc-discussion@lists.sourceforge.net
Subject: Re: TIPC out-of-order publish message

This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.

> Also, since the publish and unicast is not guaranteed in order, should not reception of a unicast data message before a publish update the publish table on the receiving end so you can expect to reply back immediately.
No, receiving of user data messages does not update the naming table. It is done via the protocol's internal published messages.

> Take UDP as the other datagram protocol. You are expected to be able to send back a reply to the sending socket immediately upon reception of a message, as by receiving it you know the farend is up.
The same thing for TIPC if you send back your messages using  known service.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
