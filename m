Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE5873BF36
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jun 2023 22:08:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCn4g-0003lF-6X;
	Fri, 23 Jun 2023 20:08:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <runet@innovsys.com>) id 1qCn4c-0003l9-JL
 for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SAWzYdirUuqzhepkp4+OIuj15zRU/e/zYp3Xqm0nzBs=; b=dzHfzvzNa7JvQ2dbLcHjkj6l8X
 UrR0w7LCSZGV6gck9+GN6GpaaIORUROtBBnoirbvgg/OV2bHjT0jYb/02f2a4BSuODb92fSoBO+Tl
 NxFou4+qLG6rA+y3ziFK+JO+Ki1CQQyMEPSPTPebRQV0Z4l0t1cO2tKZVb5dshxfJh14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SAWzYdirUuqzhepkp4+OIuj15zRU/e/zYp3Xqm0nzBs=; b=lCVZM/sTtWpMpcjEybVkx9ER2q
 d8YPAO5EpWglb2ST9oO0UCZ/SE9r4TA5pkdvrTQGPdPcOK99+RACaCxmK9WbHueiAs+UgCO/L8d9F
 me9cqqqel/LBjsdCmiPM8J/lY70BZW1PXNgzretzdhl4/iv9M5gMlbp/WzUJkfYfDdQg=;
Received: from smtp.innovsys.com ([96.2.206.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qCn4X-0008KT-WD for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:08:02 +0000
X-Sendio-Return-Path: runet@innovsys.com
X-Sendio-Delivered: Fri, 23 Jun 2023 15:07:44 -0500
Received: (sendio-qmail 3498 invoked from network); 23 Jun 2023 20:07:43 -0000
X-Sendio-SenderIP: 104.47.56.48
X-Sendio-RemoteSenderIP: 104.47.56.48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=innovsys.com; s=default; t=1687550863; i=runet@innovsys.com;
 h=Received:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:Received:Received:From:To:Subject:
 Thread-Topic:Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:Content-Language:authentication-results:
 Content-Type:Content-Transfer-Encoding:MIME-Version; bh=SAWzYdir
 Uuqzhepkp4+OIuj15zRU/e/zYp3Xqm0nzBs=; b=1OoqeeW+t2gAP9ZmoeJfUku0
 3mK8Je+8F+SS7WkS26NNNVic/lL3JxlXojWdKMKjFQeaDWt5ps0HzDh0ZitxmyUf
 c1QE1YNPmKmPpkmU6cK7Is9DTxoInC3fGpzijdiY9RWTYJ/jUFDaYiYaGZFzYqoI
 ScefZQEc9LBMoaZicf0=
X-Sendio-LASED-Version: Antispam-Engine: 5.1.3, AntispamData: 2023.6.23.193318
X-Sendio-LASED-Spam: NonSpam
X-Sendio-LASED-SpamProbability: 0.09975
X-Sendio-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_1000_LESS 0.000000, BODY_SIZE_2000_LESS 0.000000
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_500_599 0.000000,
 BODY_SIZE_7000_LESS 0.000000
 CTE_QUOTED_PRINTABLE 0.000000, HTML_00_01 0.050000, HTML_00_10 0.050000
 IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000
 NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000
 REFERENCES 0.000000, SUSP_DH_NEG 0.000000, TO_IN_SUBJECT 0.500000
 TRANSACTIONAL 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BANNER_TRUSTED_SENDER 0.000000,
 __BODY_NO_MAILTO 0.000000
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __CT 0.000000
 __CTE 0.000000, __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000
 __HAS_X_FF_ASR_SFV 0.000000, __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000
 __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000, __MSGID_32_64_CAPS 0.000000
 __MULTIPLE_RCPTS_TO_X2 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __PHISH_SPEAR_SUBJ_SUBJECT 0.000000
 __RCVD_FROM_SUSP_HOSTNAME 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000
 __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000
 __SUBJ_REPLY 0.000000, __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_GEN 0.000000
 __TO_IN_SUBJECT2 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __X_FF_ASR_SCL_NSP 0.000000
 __X_FF_ASR_SFV_NSPM 0.000000
X-Sendio-IP-Reputation: neutral
X-Sendio-MessageID: 1687550863.3491.1
Received: from unknown (HELO NAM02-DM3-obe.outbound.protection.outlook.com)
 (104.47.56.48)
 by smtp.innovsys.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted);
 23 Jun 2023 20:07:43 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJ201liY5jrSPz1Y7o1KakarwlnNQs3zY73132szQ9z0HQ2Ekk1jMzBLd//KJLNoJD3wE2I+0zdsmGmdEQVTBNoF/YLO42peBqFX4cDaahRvAjDLIdnUCEp/2FiVaP8rMGHyL88frnyqqelynOdKQPnfgPTpJo5kgiK4+orLUMekKoKYv0rHEytuPQU+7e8bqAZsdVyUhlzYwh59s4E6pzvFB8NNeBZ/wK2lKPzlD6uOOsBscRkRTVvOyVF6k8nHK5rSsjw0TwAbKtwz0ih8csr3cj1noslzWR1Z7wiAP/BKNMDjQoSSjUCzrubcYRooNGvXsZqzeB4SYkL9ZO4Eaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SAWzYdirUuqzhepkp4+OIuj15zRU/e/zYp3Xqm0nzBs=;
 b=VCFkmwkjT7VHDdZeM0OGWk4QjiMcNqaZtzNql78W6JGNsn499pBx2ZOoQXHVFFJCJZ6kOVqKUz59SDHwAbNDfpoZEKMI45aCx+mM/+xg6Pb+ZoEVdw2XR6doaIj3ZKL6UXVJhCDWRL0akEHNrchSo8bR3wFjrFY4n2oZof/jGO0Z6+TPz3htZtImBwsBWYpOB2+BnrhH0tCm/M+dhJoQhBINLAXzcNoupdWLeCJsmyEy4vYCvg9pBLqUV5kaUFmi4uBeuHYAEe9tZF0ojzsyMA8PKvaCVe+2rmYWZ0I0eC6UB2mWkaPAF3r9LJ94X2gQhdQIE2M94hEIp0G9VgmEYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innovsys.com; dmarc=pass action=none header.from=innovsys.com;
 dkim=pass header.d=innovsys.com; arc=none
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com (2603:10b6:4:30::28)
 by PH7PR13MB6317.namprd13.prod.outlook.com (2603:10b6:510:2f4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 23 Jun
 2023 20:07:38 +0000
Received: from DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17]) by DM5PR1301MB1995.namprd13.prod.outlook.com
 ([fe80::4d51:14e7:83e0:8b17%5]) with mapi id 15.20.6500.031; Fri, 23 Jun 2023
 20:07:38 +0000
From: Rune Torgersen <runet@innovsys.com>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1AAfPWUAAP7e9gAAA4nAg
Date: Fri, 23 Jun 2023 20:07:38 +0000
Message-ID: <DM5PR1301MB19950FDA786A083190E43FCFC423A@DM5PR1301MB1995.namprd13.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
In-Reply-To: <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innovsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1301MB1995:EE_|PH7PR13MB6317:EE_
x-ms-office365-filtering-correlation-id: 6543ae6e-edf7-43b9-fd9d-08db74257e12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MGLrct7DM4DLzN4TtUpZWgk3NK21Eav2Y5zdVyGMewNqhzE5QhOJzPyrxZMAC17oDyh5i/HSrJkMOTHGpSq47IBDiUcqk85Dia+q4U/icg40aWyRCxgYhgfBjQE8mp28x3ZgMrXtTX/UlpG6w4nKKSEsQpS1vb3wocXjJF+YffYUdXNAUmpZkRtPL+BDJSsDrA+ACOK/o+cUqjelNSuNjjikMlvUAzHGpBqVBT4WUVWXWaueXVMuhIZMRUcVRkepy9lBY35UTqZzIsCzNlKBWm4IV3zWumhjzJCd9LVBzWoNGor4OgQ0BbRwojeUsNDBkwuPrYIgx13Z7LC4pF38HnH5iv28BWEIfFa3zrqmXmWlCEyzrsiW3MU/q5h5+53MpknTVBDX04bIf5fSnSWSE9NXLKgkqYySlnwTbIHQT63NK4I7N+ejW+Vi1925/hRByhvm4rjyjVuJmjUJGJTbjkUdI3KCtVsKca7xEJk3+6agqxRl8ft0To5pqzX+ZWmy659A2X3MaJp0847ifHO/TqsdomB5Fc9EmRdPbJz+O6Bvz6h1QReiPehe1FogF/vM9+x83bWs4xPyHD75JbPGSx3HgQUOYEZknU9OoUsaId3QpZ9q/GLT07XRzYJtoTNPPyvg3+377J4liBZXz/KWrkUHYWX6gdQkT3p1FbZjtVM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB1995.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39850400004)(346002)(396003)(376002)(366004)(136003)(451199021)(7696005)(478600001)(76116006)(64756008)(66556008)(66946007)(66476007)(66446008)(38070700005)(71200400001)(110136005)(316002)(86362001)(83380400001)(26005)(6506007)(186003)(38100700002)(9686003)(53546011)(55236004)(55016003)(122000001)(15650500001)(4744005)(2906002)(33656002)(8936002)(5660300002)(41300700001)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zIXRAuRK2SIs2cB+WjGZ28vsIBhOwn/MHfTDfjTJyXJPhlmbWsbdn8qGfQGm?=
 =?us-ascii?Q?5sxftJmZ5/EdEyhBgrmJOF80vZam4GqeBx6JyHsLTVA/LelO48oTs+mfyp5r?=
 =?us-ascii?Q?mGGJbKvxR+jzy9PRLSVz6+vIjuG+iIP3+V76VfwjIhnot5FwW+p8wDMV24wI?=
 =?us-ascii?Q?iyJGB1qD/mO+KFHSQCE5HhXQVvRzVVQWWGaBskDDEjtMlriHvT9J/jPbJEdW?=
 =?us-ascii?Q?Qd7sVnIfSHTLjp1wI7Oa34XFoRSmtEkoxqbqm5he3BPdJtxrXeGGMUYAHhbr?=
 =?us-ascii?Q?e26zf0W54J0F/VH9GyJ8LGje6S/4sEJYcRJs5PQN7XXfUrYmWAljkdJ1IE26?=
 =?us-ascii?Q?F48HWFLDGC+eHZxUfTnm0gugXboPOkrab4idiXqqXBTGxEapCWnQuGbA+bja?=
 =?us-ascii?Q?aOaKz/ubeIAGvOgLOWBQQWOTW/ICUTCGvo9eWNgKRIplVDvv6gJxehppd77h?=
 =?us-ascii?Q?gZ+f2DILruXpiqe5Yj3DXT/93rdwSLFyIrLTSedTHg8xLYeOZyMtXYBSdMGX?=
 =?us-ascii?Q?QjGQ/F1PkJn3qpCRa05bmvKAgABKnxScEdDD3Xj4/JxhrFhvpFMUu9tyIoU5?=
 =?us-ascii?Q?CUH420x8rc8sbFjxbEdf9h3++w9Vs1RijK9R4PhjHm4v1cjjOI2zmGijSQAA?=
 =?us-ascii?Q?PZDJ38qKEbKI1KFGx2IOx9dD/+1ZD6OGJog8JK9a7qaLKx2BdcXjAcdccdXo?=
 =?us-ascii?Q?YfEabFyyiC5cgBeVgU8JThF1G4n8FM5cqqyjCDWQOgARHzZX+I0LUyWz9rxp?=
 =?us-ascii?Q?IEZynZnmBJs4pSfwH4AlY95bXXL7IVYuD6tU9oDeUVGzVuTAF+S2mayiqC4a?=
 =?us-ascii?Q?zv16uDjHMJGQu5VuKUcRF2ysVQ1xG2FpxVASrk9FSI7dzemmhL9Ogo7hfc06?=
 =?us-ascii?Q?SI/UcrCtgYr5+sL9PlTGGZcOgbL3SnKiiC9Sm263iTHZP4icT7cPDL3EiDMh?=
 =?us-ascii?Q?beoitwa2SYSOZPHRcGJrXN3Q/WcFBW1F7zUL5qXIZqYQL1of5QRvffQrf3fM?=
 =?us-ascii?Q?hCLgFcpozA9hywZJxKC/M2JFLt4ZwH6SwW1a3R49eMJgLhIriCJDXKRNbtnt?=
 =?us-ascii?Q?E0vu3CzIv9gtsFGJo9KCwyVZ0sqhkct0UFsg4L12LbzM/DmngkOnAgZqgAWU?=
 =?us-ascii?Q?HytawdOcMTImN+doPF6FEZRLUvS5pdjtQ7TQy+VOn6pt0/M0OpFh2lIy6Cxm?=
 =?us-ascii?Q?63b7aiIxPL5Dqwl/v/Xb+CSDDJmsStcK8OyHJNvVR0Zgaa8CXTIDVdLzSvfv?=
 =?us-ascii?Q?t//qjC+afYGuMTBQ8zskf7wiOIie9q8TTTsQcNBLR4hp2/ZyukNPEYGErsXT?=
 =?us-ascii?Q?dNQEpn8msaJbIEkQ6VIplWlEnrOvnXku14/9lubD5q7N18SvQ4JrJktEYb9c?=
 =?us-ascii?Q?iz+7h+oyarpim/GtDUaPcMKmLWJ2LKZqIjt/+fHxXLgmtOij5jlzIIq0Vbv8?=
 =?us-ascii?Q?tAKTvV2JvekRmflmVZXWLI6a84ed5gBojxribtWeAS1uppnB/1LiFRAYXC9p?=
 =?us-ascii?Q?sntNcg1DNVxYHs7KRFn5GXM7nooKa+lCqQSucfEreeTR1MsUjedo4oBC+m4q?=
 =?us-ascii?Q?dqXhEXWYplLbiLArVs1Cod65DbCaAYpaARCI8eOI?=
MIME-Version: 1.0
X-OriginatorOrg: innovsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB1995.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6543ae6e-edf7-43b9-fd9d-08db74257e12
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 20:07:38.0804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a48ce45-ee97-4a95-ac18-3390878a179b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9aq0KWwz9bMHtRA97FzM4JPLrUBNaFMqZAe/R+5UawMSUWI/DkpRJi0oUt1JAMI1KiB4DJzF6KjQAnHtfaziKBMLTnzBkzcGMbFuV2Drchc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB6317
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCn4X-0008KT-WD
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

> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
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
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
