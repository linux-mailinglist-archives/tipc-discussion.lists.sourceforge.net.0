Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6327D8C70D5
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 May 2024 06:13:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s7SU9-0001D2-SJ;
	Thu, 16 May 2024 04:12:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1s7SU7-0001Cs-3D
 for tipc-discussion@lists.sourceforge.net;
 Thu, 16 May 2024 04:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ayVutTf9W2JY2wunw4Kvj1gDAL5w8OODGQ0BSWaFFrg=; b=GxGz+AyTfuCYgtd83p0BRhg7Xy
 N7gSSmYHQGE1t80S/cm6gt0vPjhsG67CPGYck1pZDzTFjy/CgNKVFxj6K4yMY+r5kqvs3nl/IR2x+
 FnZA+j1IThkGevorHJ5LSV3jBp3t8C9nwAQf6iIK98ftJhtGzhG+yirJuu8GolH3wR4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ayVutTf9W2JY2wunw4Kvj1gDAL5w8OODGQ0BSWaFFrg=; b=fmrTvU6ElvyOmSxH3TueEzRSA8
 jFZAkh/Rc8onS3YPME2Cxr92cWm97tEbKFZr1UjoPSrgHXIKf+QP9rs3fdzn5UzJySKVrd/xrARLU
 RoFfmdjxWQKaV8G5IDNLE/m6Px9yvxvNBa/9H8PZdgHmvCBUx5hlgdXFsL1cqpcxA8Tk=;
Received: from mail-db8eur05on2094.outbound.protection.outlook.com
 ([40.107.20.94] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s7SU5-0007a4-UC for tipc-discussion@lists.sourceforge.net;
 Thu, 16 May 2024 04:12:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EQkXochqoKFBg7ZI0EgZOvS08RrJ9KnHUM5DfoVMvnM8XXZiTMXW5CIVevg+3gY4MaHVF0UfJ4Q9pFaSP0OB02ul8OEKnFClPiWHCuffGUEbz5rwUwdu6NOjxfaWX6+RuncHmbxjgxHbqA/DZww7px2X8AIfjP9jDME+VOzSfLPchWZZJeAn/vBCFKVAzG8e7QUAPRFlUqvVCgZczuA2/2dNdgWN1vHwfDRBVKT8ozeyw/qZOAZIHXYlRv0OYKs3ZzNie3DY+NiD99cRB82rA78yU1Qt8qrox138YDT7CQyg92SB28xZgDXZSGPxvnrKR75iBK9O8CCRuOUaR+fvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ayVutTf9W2JY2wunw4Kvj1gDAL5w8OODGQ0BSWaFFrg=;
 b=DjP76CVix74O3Sg7mHC3BmOdN6FU7NI9VCWw73yvefNrw2F6KLHw/bMCJF//V2scYzwj0b2tD+gaMXkEm4pVNzzBmsF0oBwCpXKQPrm3gAfogOLXVpCzoJ0fcknzI5+ztZLaE29Q3KbrYNQNUa6kvpw4wdcD4DyU1RG+GsyYGLh48/HqOyRfSviUyfYuRTULOb5mH4uTR0b1dgx9QbN3NXihnz0Dqoi2NQjNij3w9zsAsgnIHW6u1R+ADTKxfw2Tv/oB5UTS+jNbwOx2mX28XssJQXF3NVuKkNXGHa5SMOFE5MJ+vqQseQz22/05zOxHqeAa8mtEMFUuR87aJ2pazQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayVutTf9W2JY2wunw4Kvj1gDAL5w8OODGQ0BSWaFFrg=;
 b=btuV6RMoyWzwV323utN2Fc8gxPb4lM1D5etPNN+GyUB0DY55h9Wji+Mh2IUC4UJD/I49YueC7ogWRGuQZA38PVlYrXTP+vAfrekmqZT3VPHqXFOOQUyrIy6PHl2hheMlKnn9UcPWucT3kgfNW0Rk6Iw0nD1taAZNx6p/ekrSJECP83G0zydyIww+BwRhm7WZJykCHykBfbzjK0Adn8uMhz+bI/2BJtekpSqazFD2tLGCztTndA336yZF2n3F3BTy13aC/HjI0Obgx1k2C02DF57HCbQAIT7KzU3ypbWDbh1vNkfcgfWn5FUSDhlp9CmxxHuEo9b7s6LH88RS2VjQ+g==
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com (2603:10a6:20b:4ce::15)
 by AM7PR05MB6774.eurprd05.prod.outlook.com (2603:10a6:20b:140::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Thu, 16 May
 2024 03:56:40 +0000
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::8e06:8f6c:4364:7266]) by AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::8e06:8f6c:4364:7266%6]) with mapi id 15.20.7587.026; Thu, 16 May 2024
 03:56:40 +0000
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Tuning/Debugging of "Retransmission failure"
Thread-Index: AQHapukIxgkrhGtsxkqoix9sU9kkjrGZOuig
Date: Thu, 16 May 2024 03:56:40 +0000
Message-ID: <AS4PR05MB9647BA2684FE3CBEF9D7025A88ED2@AS4PR05MB9647.eurprd05.prod.outlook.com>
References: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2024-05-15T17:07:10.704Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal Use;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR05MB9647:EE_|AM7PR05MB6774:EE_
x-ms-office365-filtering-correlation-id: b9edbff1-2681-485c-ca34-08dc755c311a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?2akzv5blBoBnMKnoxS5dFl79vi9VC9SCs5hZRA9+SgX/1ez6Fqz9tKf7k8BJ?=
 =?us-ascii?Q?y85924ZnnzbbuFVoJJyOUVX25XTQgBmZLY90KhPCauYeBplifQDPwb/c55IV?=
 =?us-ascii?Q?JHE9cX+wXm4LnllCnCswGSY9d/nlOa9+K/Ayrf41wr2/IdQt+VdBBdVF39LS?=
 =?us-ascii?Q?eiOgoYQGjCtXCq3nvKaNOvW+mYHbLxggaI5DtE2pOCyJWSqdOUDouTtgn9Cs?=
 =?us-ascii?Q?NHDtTQI0KhcBtzy3YTCLlbnVRWsJpSh0J65jbVYQ7NxXl+wo8YcSWqe3Hgwh?=
 =?us-ascii?Q?GK53zlhhIeBIbvnJB0prslIIXMLOzGox6lOhYY7uh6vay09zNV1662MajWKW?=
 =?us-ascii?Q?fQwpQNOZUW5hUKlB9QCnONz7GLbKahiZZIuEaks/iTz7Hjfbh/+S/ZkLoNGA?=
 =?us-ascii?Q?3aeHYxKr61IaHps6w9H2DjIK1+hFo7Uej+Knx1CZkPwz8/PJAh2l1MLyvdXw?=
 =?us-ascii?Q?Kg4gM0gjljSdNOPusFLf3Itx7AwFkV9C7w6JuvBrMiitHf/Xs4WhNnpUhA3z?=
 =?us-ascii?Q?HLqH/ws7QxUnT/DLhd41xtxtg9xqQThRWMl0hEfd1GyLIfQIfOIa0AzzBz54?=
 =?us-ascii?Q?dSHtxbTv8UUNeMGEe8FJxOFrrcVdNogJejd/WprEh3sElrlpo6t20SyzyypV?=
 =?us-ascii?Q?uQ/rDmKKrFpV6bhZsq5l5UG8dWb439G7M4opiewDSg2PdxuT1AO9UOGYQtQY?=
 =?us-ascii?Q?vtgEoSe82Xj8VGcJZclF7nVT4yH1BVaijLj7BDMN84djGM/cNCbYD9XwnWk0?=
 =?us-ascii?Q?lAYcUw2IQnFvCqrzMbc7dXyMtbgWLzgcWcSNKpyX3m7LG2sqvocifj/Ofs/J?=
 =?us-ascii?Q?o1Jz4kaG5cpx0Uv9RBJq03kHMHJl9ThPWcqn6IB0/T0UlAr+j1YDV6rA5Yiw?=
 =?us-ascii?Q?iXJBSiJkPpkd39v7lM5t3Bei1POLBXLLqQhXtvzlcsy0Rv67ZJCsigBPrnQF?=
 =?us-ascii?Q?HUgM5FzpR3NyZ73sWY3mVVed+C/cc2wKIEopcP9MP9v0pExILaL2Fw/iJTTr?=
 =?us-ascii?Q?6F16jkGuD1Jx2Bvf+eIZddMEkVnhTBes4bIyVwN7BfNGya0sJ7PmRreILOoD?=
 =?us-ascii?Q?nbjyk3qZ1wDX0dabiE62w4/HM2G1Ddrh1G0UK97piKm9efHGbV79e1r+PUcP?=
 =?us-ascii?Q?CDVfOoOKwzaApnccZrh32LIQPFl+DRkxH3xPo9IWY1DhQWJmkIXtXpi4BG2e?=
 =?us-ascii?Q?+xBxe+VEo78QQ0yikyUDRw8G2eNPrAe5iXx6I5wO+1s36KrwcJ79Yphba5CG?=
 =?us-ascii?Q?F+iBR1DJa2MgcpMHDmFTeqLlPtu+qdBJ7zSPn39Tfo69I61KUliYuSePrFmU?=
 =?us-ascii?Q?FQ8QBVIp3H/kC+/JUO8FmjGikGG0OctCx2DdV+4kjxH52Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS4PR05MB9647.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ENj4W+GdWk5pN8X8xYt6MlcsjG9bzIBEjubEGkt9sJTo0ga1ScqxtdJA39d8?=
 =?us-ascii?Q?2g09aLH5djUuFZ2ra45S1ju+ng02Mae0VhxE1RJ2t58euI78ulb7U/bE4wsa?=
 =?us-ascii?Q?/7hnqKDqGL+OybCLfmREoymKVUwu2j+8ukKA0mQNbR4tjHjuGdalUgRq6u0u?=
 =?us-ascii?Q?wLIwT7Pt1UzTVMv4s765jeXuRaR+b8t4e0hBcxfSMMccBVThT/3lRoaUVt+a?=
 =?us-ascii?Q?V10FHPrp3VE0KOy+ZBFaw0NtL4M1To7OiOmLnxlBpkhPQDAUtjeSmFx8UZFr?=
 =?us-ascii?Q?FqRjLZpn+dpNhF5NdOX7t2R9F/D2zoHSZwWoTd127feCaPzuckg3zWuUCbiB?=
 =?us-ascii?Q?EzmKk1G50t93zdffzXMJKzaSdLk52UlsoFAGLpL96L9TlTFkNzpejUudpt3I?=
 =?us-ascii?Q?gylLDyDt1ASpFvs4tuYjMgv7FRM35n6RDci2ZeN0slb/fAh2EVQS4aFrv3pA?=
 =?us-ascii?Q?ihLEfWESe9TSpE+Ai6gEh3acibDyBACT+ZvsXN68RqLBCSRLglwHi0BWJ4SQ?=
 =?us-ascii?Q?Nlu/TX8rbmCsMm6c+7HSbg2TrO5Ij+MV9b1qORLTklKLBH8yrnkx8mZwr1O0?=
 =?us-ascii?Q?tyVLD/t3tPQ+5lINzPwIHohSt6o4qjxrbVQoMlUINef9b3hZbMGocU14GUI4?=
 =?us-ascii?Q?1EJC5gnTCKQYmshOEGD/kEY/ngpct5MspdSf8fgIXkIDsc9Fj4ExelgvId+u?=
 =?us-ascii?Q?eu04u5tiKJrQtrAscCHCg3LESzM+LRh7JbgDWtMzA7IgYTlGic9tfde0qa1r?=
 =?us-ascii?Q?tkf/EX4fV38lyj/yavaE5EV2FNUybkqCELBEJKOn898KJ5yAwEUckuljduig?=
 =?us-ascii?Q?DNdCji5vwvQ//yRppGe9Do0cnZeBKdsOaEj3/efMcoC+UcOZ7YaoPiSsW9c7?=
 =?us-ascii?Q?NcPDfNKy8UJzCkfy3UcEtbBgtYNhiJZv9kMzg5Qn/n0hG2vjpUR8LVAzu45x?=
 =?us-ascii?Q?u9qgq/mo+/tiROvMZpoENMwDmtz5ptLyoWqeT8kZAX7VGoQDXlz+0v1URYnb?=
 =?us-ascii?Q?5RkcWWvmRKFc2z3YRTFeNSJWjf+Bv5BK8YkcTPUp4ciuhlJfZZsWXoxNU8VF?=
 =?us-ascii?Q?yo5dOdtJMqCZg9fYWE0qsFWut5KZEQnCzTiu5P3oWJXj23ialNz/TILAJCyL?=
 =?us-ascii?Q?mlXgv4mVugk2Ot+4BtB3pjZGYGZ2Sat/r3J2w+zC4UjF80GbW09zsfJsQN+/?=
 =?us-ascii?Q?0Qzt8tUh72tYU9vFfJK6zoQ02j35sBNc1EMTirv/bTFIdIcQdzkpDTWLwPQA?=
 =?us-ascii?Q?/6rXLlpvndyH17RuNXlohhEWJaDRakGy4H1+1H2jQc9rrRIOfQ2hfMubCQLc?=
 =?us-ascii?Q?+cO6wN5jv8GgQr3uqRS+lxPpHm44K7bfOiIeyWpMTl3AwgeGRC5dR26kPVln?=
 =?us-ascii?Q?cmgD9RT6La/qlR523XUsyCYjMap9bA7G5ebh03a7agxF5onDMuOxr4hQb3xf?=
 =?us-ascii?Q?G3X2mUC935wz0x1xKx/IHDbSleyV2vGXuav7RLJUGVBLz0z1PpYEVhJ6li8m?=
 =?us-ascii?Q?dpG5iCiX4/Jo0McQNTo9dpXxkYA5pdFLrbbpdXRkk+xXTPGK+1yTKtUujyCl?=
 =?us-ascii?Q?6DcyFtBUIwJMCW3XQ6WdbVE173DaeX/LKGaPMsOK?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR05MB9647.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9edbff1-2681-485c-ca34-08dc755c311a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2024 03:56:40.0933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jl/EI5f2HyDN8fV4qdjkA6+mr+Osy/Psujny4FIZX/JWfwqQejPNaEyDo9MbUKLsLOZ2M6t8b9b7BNrHTZoJ/ICTvCjgfoScIVZXjX+tMlw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR05MB6774
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > I've started to notice messages like this when pushing TIPC
 a bit: Not sure what you mean by "pushing TIPC a bit". If it means dropping
 TIPC messages, then "Retransmission failure" is expected. >Is [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.94 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [40.107.20.94 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s7SU5-0007a4-UC
Subject: Re: [tipc-discussion] Tuning/Debugging of "Retransmission failure"
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


>   I've started to notice messages like this when pushing TIPC a bit:
Not sure what you mean by "pushing TIPC a bit". If it means dropping TIPC messages, then "Retransmission failure" is expected.
>Is there any tuning I can do to avoid the problem, or other data to collect to better understand it?
>
If you did not intentionally drop TIPC messages, then issue could be due to packet drop at NIC (in your VM node or host or Switch/Router etc.). You need to do the tunning at NIC.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
