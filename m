Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0F77384BF
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Jun 2023 15:18:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qBxjQ-000065-Hk;
	Wed, 21 Jun 2023 13:18:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qBxjN-00005z-Ue
 for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rj1v38xDMCcuWyoOKVeUCr2dS039RPqZv+8nf+C3Hyk=; b=b9GDod1CfwVYckc5Ht2O6fKwJv
 Dej3qG1B2OHWhOKtAxeNPpXGk8r2ySY0QrQgZBJ6zH2zoD3apY2usmKlRFgDxdXsMeHYpUoWstsgY
 xs5ckWTOjbFhmmC2V4VkiVY+qGyTyMW2e5cnyb0TyLV3bJG9V+jY8vGnr/fSCMoI3M0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rj1v38xDMCcuWyoOKVeUCr2dS039RPqZv+8nf+C3Hyk=; b=G6sBH7YiW/+2eyqAVb6po2r9vv
 bMi6q44XCOLCgxjHh/gNjnwxuHvmMx7V5LBJLD4IK8fwZhBS7quGQhtYjzjf11sySdEXkPTsFWCGw
 1sgbq5H+zsqj/mOHkuiA6PjjNStnaZP7+Bmsp0wudFwF/qQaz6TzuByqoFUmLnL4mqqc=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qBxjJ-00AfUA-Ma for tipc-discussion@lists.sourceforge.net;
 Wed, 21 Jun 2023 13:18:42 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Wed, 21 Jun 2023 08:18:27 -0500
Received: (sendio-qmail 21598 invoked from network); 21 Jun 2023 13:18:27 -0000
X-Sendio-SenderIP: 104.47.57.173
X-Sendio-RemoteSenderIP: 104.47.57.173
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687353506; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:Content-Language:msip_labels:
 authentication-results:Content-Type:MIME-Version; bh=rj1v38xDMCc
 uWyoOKVeUCr2dS039RPqZv+8nf+C3Hyk=; b=F1P41/T21aAXFODXZsBo7Xo3L2C
 zL74hvX7pq10btwtGZ+SDMG9uDzy/NpLHZ2BthcyusFVbiX3aNn4NR1YRb2EoRnt
 Kb4G3FoRP9+JnazvcgfoMAazPt5j8bLZ1ngcEBPQVbv5XQQ0TEouyhTxOxnDR9LP
 p08Q44fNzmAajHQM=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.21.124516
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
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BANNER_TRUSTED_SENDER 0.000000,
 __BODY_NO_MAILTO 0.000000
 __BODY_TEXT_X4 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000
 __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000, __CTYPE_MULTIPART 0.000000
 __CTYPE_MULTIPART_ALT 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000
 __DQ_NEG_IP 0.000000, __FRAUD_URGENCY 0.000000, __HAS_FROM 0.000000
 __HAS_HTML 0.000000, __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000
 __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000,
 __HAS_X_FF_ASR_SFV 0.000000
 __HTML_ENTITIES_X4 0.000000, __HTML_TAG_DIV 0.000000, __IN_REP_TO 0.000000
 __MAIL_CHAIN 0.000000, __MIME_HTML 0.000000, __MIME_TEXT_H 0.000000
 __MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000, __MIME_TEXT_P 0.000000
 __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000, __MIME_VERSION 0.000000
 __MSGID_32_64_CAPS 0.000000, __MULTIPLE_RCPTS_TO_X2 0.000000,
 __PART_TYPE_HTML 0.000000
 __PHISH_PHRASE10_D 0.000000, __PHISH_SPEAR_SUBJ_SUBJECT 0.000000,
 __RATWARE_SIGNATURE_3_N1 0.000000
 __RCVD_FROM_SUSP_HOSTNAME 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000
 __SCAN_D_NEG_HEUR2 0.000000, __STYLE_RATWARE_NEG 0.000000, __STYLE_TAG 0.000000
 __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000
 __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_GEN 0.000000,
 __TAG_EXISTS_HTML 0.000000
 __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000
 __TO_REAL_NAMES 0.000000, __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000
 __URI_NS 0.000000, __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687353506.21585.1
Received: from unknown (HELO NAM11-DM6-obe.outbound.protection.outlook.com)
 (104.47.57.173)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 21 Jun 2023 13:18:25 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhlWLmSKy/xyhjSWdGwFsaYTx2xshN5vodtnviDHFtv9O9DvvWJikltjWnYImiqdkIwLiKH1O0BTLi93SHispA0JonxDAEiXI2oU08z5Ku3YgII3EKEHwPuR73hSGEjHmL08/oO8nePQKxxg8SCGGaWz3ed5BxHeWVrNnR+shnDWCwFdpRrNRBTRkIQsGK+E9wPa1PhJl+xw4IFbzQJm0OaIubumhIRv5hUBqvA/glOd38Qcaapo9146f19fvAHWfyc2ryLL1WVtWH+Moo2/TyvMgQ3q2+R5t4WQe46Cd4ROUrcVRxBvjLKzZhFMQ6abZqNcFLvH2ar+QEb6N9l8QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rj1v38xDMCcuWyoOKVeUCr2dS039RPqZv+8nf+C3Hyk=;
 b=PdKhJtCUUemTTjSKJHijGJOlPDVV2uEAMasHPvoSk10awWHyx0yeY/vP7uCl6mhZ8RQZy4laCT4Avl496buBVARYpWoCdE6A0M4ocIX5EBvgG172lDC5YzBCA1ADvYQBmadU2JmgNa0EIi+XZtVl8PhxWQ66602AeWnkHPYTsZznJuVu6CBLpft52FzGV4JRWHMM/QBdIMogU+dSEIQ46oghD8+mGm1VwcdNk7Yy2NmCk359nze4oRS9WP3v/rSQr/a1Z8D8kyOS6bPqWVXdAQdRBIRR3R6PPhCcmNB0rHd91l3/Ngk2huCobAEw60Iqr/ES0jFSYLZAf+cEklE8Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by BY3PR13MB6015.namprd13.prod.outlook.com (2603:10b6:a03:3b2::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.39; Wed, 21 Jun
 2023 13:18:21 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Wed, 21 Jun 2023
 13:18:21 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CA=
Date: Wed, 21 Jun 2023 13:18:21 +0000
Message-ID: <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|BY3PR13MB6015:EE_
x-ms-office365-filtering-correlation-id: b976508b-2f97-45d5-2209-08db7259fc47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QgerBX6hZqjBoOIZcIkdmMztRkqKdAo+OTsqbCHrkPz9kL32TDxe1XURwgYePtfek4jEa2TfYQCRPv0KdQ7M+UdzsInmCR/mOUOxoP7d9vJSyWsejPbKqMFBe/x95p06lP1NaENPmmXYX79uNXCY5Mxb5XrmxtTJ2RRf+CMdOB3YkNsETms99VOC2KFOEQXJ3zei1n1dAD3u62Ka3ehaZLprOkc5isdeHN+EVs+qvat5FiCAdgVtaBoVg22YNRv1TCZmLl0gnuNrwvL4PbsAkuXauUjJNDSLDBcDlcDoQLoie3Zai9Ltwpf3JXuMM7TIRshgZVi3vSnD5oH6moxpvN6PnhKKJOXrDl4rT7FAzsadB79Fg8AWLzlGkkJoGzcn8DU5VpYI9cXqxbe4+VovQHInPyifwqrJ154L/g/+mdaQCp2VDGwXJnDtrQkuhi0/SHmzCrl6KbkkQ0sIemLztSua+ignBAG5F92Gm5WT+ayeJ+dv6XRz/wk84qYEuFyFrRbLYVTgzXKQyEiQFfztIGNrR+2/B+y3J0mPmMrBp4KrFs0tjgwtdz3avpVLUhvAoLoppwOyVhrXWcJJRHtY2KxIs11v8RoXOGijYkyD3tG830YBKgLpIkNJ7IOSbMsYK+cO9xwhLfuBz0UZMQ1Q4WTGkf3wG2fU2/7QPYOKag4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(136003)(396003)(39850400004)(376002)(451199021)(7696005)(38070700005)(478600001)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(71200400001)(110136005)(316002)(86362001)(26005)(6506007)(83380400001)(55016003)(186003)(38100700002)(9686003)(53546011)(55236004)(122000001)(5660300002)(52536014)(2906002)(33656002)(15650500001)(41300700001)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nVx1LEEDdK2j2EDyazMwJqd++Vg15Qfp+SK9ovs9AWMkjXLKNiJ1PP0O1OXj?=
 =?us-ascii?Q?ov/XGEiI7o7jAe+UgCCkxoui+JtXMH8weqLvNOyqDTdZyT/ghYN1ZGGj/jAS?=
 =?us-ascii?Q?fXPqv2Rm505E61yGiqQArzpLC04yLyYNF0MkTdkffR2zKFGg69/lYLElAlL6?=
 =?us-ascii?Q?xfkDgfIvzMPPkJWjpu0V1NDOo3y59dv6AewQ5hocJCZTzi8vxA+nzvQ5IJKF?=
 =?us-ascii?Q?ywZd29UKLA3GkCXlM/8P8Fbsyc235jV3xmi6AbVjrD6tXLW5Lkz47CschHMV?=
 =?us-ascii?Q?VjO7CLkuF03C8I9tn1W/qwnXSRnfpgKV0qW5foQQxQCRnG1eH2jNoRwv6/FK?=
 =?us-ascii?Q?ysg9VZ/EZbZ8egRP2n7ll/bXNGJxdY/n8whbCZ/qO5+SYUq2zocEwYvAE24x?=
 =?us-ascii?Q?NVwRO8N6pi1Hsc/6lFdw/pnEtR4zRimB71fc2wKwu23LzTEEbGC8tIc4ZHpi?=
 =?us-ascii?Q?iFit5R0QasoMOasTjA2ytxj0ZTNMKMomBFlfCsZMvhy+ajEHlwC+mB9hhqVw?=
 =?us-ascii?Q?6t5QPBnZJJBFAvlxWTclyjs1pm1TqSns0OtHB43BNeBK8Jr1CR5QJv8bD66Z?=
 =?us-ascii?Q?wXvq1w2B/t5CJS/MlH7SPewwhstCrIZ/oH/AamBRy8XWLnuQtCHAtWDYofoQ?=
 =?us-ascii?Q?xpkLV5lHFdn3FYTXFtkOa+PBm78piZOgBGhITF6vlgkjDHp4TANEt00kTmnH?=
 =?us-ascii?Q?oIynI6BewBb4V7Y3m4D5/8aMZK1rjNhFxrz1fYFlGJOvH4Ho5qojR+rQP0x6?=
 =?us-ascii?Q?ycR4lOdF6t2wCqYWDz7ibHU/zigtEIgf7ttkeydVpLPE/2FrIwjFXiP5ADxY?=
 =?us-ascii?Q?Rgt6QJ26DeEF0h7DDaOkve3x+XqrrbbTfGpctSQ8QeIhntQO6kp6WIFE9XUr?=
 =?us-ascii?Q?7eD4UV95Zddwflx8YkIpI6G27Mu5eQVFFm2IF+TNl4fgWs0r3gPubwLHcluO?=
 =?us-ascii?Q?idnPfiRP7UUYYLgalmACekX16EFxFxKENxUrPpf/z6zgy+Zyh5HRaC4ad1TC?=
 =?us-ascii?Q?aszGxoLJqHm7qYakN0LwPUQ0Av+mrZvoI3ywUpMR/CuUaSiEq7rTXC5evvJi?=
 =?us-ascii?Q?rHDJFfoZrQAPeF4BzWcDIRz6AY0TkWOWJPxAppTNbfc4uH1cakUkJg1SFMBN?=
 =?us-ascii?Q?WCLqHeeSvTZxZ6GwTJI+3ejfRX2Aphf7UH7vM+3hcgcELXukQ5zOnDYRqNJT?=
 =?us-ascii?Q?BbVUKYtOiVBpZF14epI3QlXb3knS6MhaRA4xq8o+icQS1xVA60paVlnKhcjl?=
 =?us-ascii?Q?io4xbzHmfcA24Tzkm3ybmQyT2G2TYTBaZ3OGE3aiNh0UGvNCKEyZnRk6apGV?=
 =?us-ascii?Q?sYMiFS+BDke0mhD998mkxdOZm1vCvubi4WR9L3nSKXinLmTvOyLmXcK1qU9M?=
 =?us-ascii?Q?nkNzJGbq8EihrtEU3KipgK1nb9xfYVZmiHcg5cpoKTnbHV8sTV5kdAqdRFfD?=
 =?us-ascii?Q?OviB5f5GqmZDRS8j+XHkQ5a8qTI9YhZczEHHW3713ZeApqr4kJ6UsNSiz8AT?=
 =?us-ascii?Q?4cR8u3KfRzntA3WO4TLkDKe7qdQ1i2R87/tGF1zyI1Jy8G5cokKBN1+MarjB?=
 =?us-ascii?Q?K+UzgEjTJVyoq2hhI7LK3HVP3OPOIg1KhWchEm04?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b976508b-2f97-45d5-2209-08db7259fc47
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 13:18:21.2701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +loSrhzK5tG8WF5nz8krdOGJr9Pl9AlCpLY5Y3qOWfPDwOluZwv4JRyJ+PIK3YSRst2sZg+ikkyjZeiexIZorlXziPyX+/5pree4MaYl+T4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR13MB6015
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Example is a extremely paired down version of the problem.
 What it means in reality for us, is that if we send a message from a newly
 opened tipc socket to a different node, we cannot send back a repl [...] 
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
X-Headers-End: 1qBxjJ-00AfUA-Ma
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
