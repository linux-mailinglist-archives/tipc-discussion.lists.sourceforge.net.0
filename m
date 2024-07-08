Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2EC929FCC
	for <lists+tipc-discussion@lfdr.de>; Mon,  8 Jul 2024 12:03:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sQlD1-0006jj-UE;
	Mon, 08 Jul 2024 10:03:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1sQlCz-0006jS-Pc
 for tipc-discussion@lists.sourceforge.net;
 Mon, 08 Jul 2024 10:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fAj19qtXfjX/kpbaEICJZy1K2FTWaZl0FBBxU7Gk6TM=; b=P/2b3ZmFU2cqhYh7G4me5Bkcas
 NvqNYckwzS25uW3BiNmMWjKAC/onS4U08SFpr54EZY2rFrvA7NVq+a+82K0zlsbJ3zwd4Qak/jKK/
 RD7uNp2phBeIy0iZCYKj7u/CqnKZIhnS0Op3wXzZk5K4OJLU+eTl+9DtvwPQ/6o9FC5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fAj19qtXfjX/kpbaEICJZy1K2FTWaZl0FBBxU7Gk6TM=; b=k26OcOy6iW38Jyj9dyT+1lB2FY
 DWYL/29X10kpz2AnN4OblA1S8j3rP2fNSaLyMVHettcEITfLDfTgwmWejLNyLyZSnGQ4ksMcrth1n
 /wmU+F6hcUkvIakXVlGvHcRYcZbTlON8+EoEhKYKf0yc2dyaI/jiUcr3BS1nfzBVTxcg=;
Received: from mail-am6eur05on2098.outbound.protection.outlook.com
 ([40.107.22.98] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sQlCz-0006OR-MN for tipc-discussion@lists.sourceforge.net;
 Mon, 08 Jul 2024 10:02:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SpRHhQ1IiROuADdWsuJMJAhsXFSZtrLVUnH/g03jYUj1lA7OsieArLfYI7GNelLdF/V3hy9S3kv5a81EqxIQPtUK3XSpSRyEKPCmPtm3/85lG1V3JQy/z7rF3+PQtLvcLBFlriF7l6Zbj5Oi+KmUmgmfKoljoYglxjNoEChD7GIvgqFDXOSCQ3gRvY3XZlq7N9pdPNrwy3RzLnOgEyYMdS0fG8Wx63bhChYWFaitM75Us3LJmgrUqhTiXTNGu4ClQhmBQXrPAqXaKc6EkpdNX8UO4z2pfg+mTOw6sBG5YxjnL5WsPZMCDfpqEyFzf/x4nQQXuriHYjP5Mv6qmmJx3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAj19qtXfjX/kpbaEICJZy1K2FTWaZl0FBBxU7Gk6TM=;
 b=lAUFbxNAE03rkqv8kglJdcY792WkfFwD1rIMzvm88nB7+0fJfYMrLUUNntG3mAkPLZnSAzDIjY+u0pjPpuMBgrvRw8tNzzHDbIC/qBkRkBHmaFx9Nc4G2sxhCzArJBdYKINbMNncF6sOJ0RIZRwvG512vj84Kdzwryi5U55xzxPJLz2yzx08/t7F9HurI8Xwftq8q0Kg+zHYgRBJVV1Z0JDOUXhRx0C4sVwMggpWGwx220QiO5dWvN2tENaO2F8Dpt0zdkRH3/zaB8+fx3vcksgduWQ5nlzxLGHxrqkCP6PIdpYBkGT94A63CHRD/OJ35MQXVFec/G+XYRLiMAzlbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAj19qtXfjX/kpbaEICJZy1K2FTWaZl0FBBxU7Gk6TM=;
 b=A9soKx/foCFxomgBMlNZ1yzI4q+ffhV07SizFwUWg3tBc03UVB697Dxa4GMqTX7k4cYpLiIuSAo0yEN68s0pb7j8cJ2LxXwi0syVGnnvvlVrCBIvgoFicVZNtCdYeqmBewJHga+GcTuWOd7/XDiGRptI5P+q5Na9zg3kNVWEH0veRj8/mPLfAjUAfLlUp8ZVpDQV2k8MRf3sXTP0cydHzeTS4WABjy9oTf6Bd+D4aD1I9FNStRj2QSZT1xwB5iiYWEOtMdQZ28NJTTTtYgbXqxLqaoPzOjSsKeDIBbjxe+Yh3P1+OEt46Sq9JYMFDAvRiBTXCNXmXyXqQOlvpBROzg==
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com (2603:10a6:20b:4ce::15)
 by AS8PR05MB7767.eurprd05.prod.outlook.com (2603:10a6:20b:258::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 10:02:47 +0000
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::6604:787f:30cd:eec6]) by AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::6604:787f:30cd:eec6%6]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 10:02:47 +0000
To: prakash bisht <ps13.bisht@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] Reg: TIPC Error - "Unable to remove
 publication from failed node"
Thread-Index: AQHazqOGdv2wq3u8UUWq/jwS7Z5oT7HsnfrA
Date: Mon, 8 Jul 2024 10:02:47 +0000
Message-ID: <AS4PR05MB9647F933C42CFC96D838484B88DA2@AS4PR05MB9647.eurprd05.prod.outlook.com>
References: <CACB1WsS1ZVUb8Lv3BY171oS8qAbhoL1m7B812FT1D9MVQr6DUg@mail.gmail.com>
In-Reply-To: <CACB1WsS1ZVUb8Lv3BY171oS8qAbhoL1m7B812FT1D9MVQr6DUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR05MB9647:EE_|AS8PR05MB7767:EE_
x-ms-office365-filtering-correlation-id: b92ca830-ced6-47a9-832e-08dc9f351eaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?RRbKQyid3u2CJdRQbVu/bz8vGZuCN106alwWF6l0/H64Tdwc03e4kPamH8yn?=
 =?us-ascii?Q?SHJfBA3K0A73gG4xtMw0ECFQYJjNyd5vg0WY4QNqcdsYtDjO+5UgAD8khrCi?=
 =?us-ascii?Q?a74FshIS2JRZuWevHTZHSvoHmeWYmf4s4kDt2zzEuQdzp7YiiqsUmISutfop?=
 =?us-ascii?Q?otWJevAcWUuZwyZ0nBUXp6i2gHSEy+ENmV8rxw8s3B3sBE7gWax+bsAIfhCz?=
 =?us-ascii?Q?b8B+Xr3BJ65OpDID/yBLNJ4e7D+o6DD/S/6BLdzH9hpt8TQ9La3OfCaNnWSu?=
 =?us-ascii?Q?AZq8xVLAGzeShnLLRADHu2bZCHWokQ6oU/qWabvikB39WgEDFeYID0kVw7/e?=
 =?us-ascii?Q?zi5Xy0NZ2hqkpVW6H5EtyE68nppvscQRARf7omrjd/65rrjnKABPpYGHXv0M?=
 =?us-ascii?Q?MkBZxds0nmf34D4QHSaayla36dnho7QEWZuRUF56SnF8vF/PE0LLFMZXIo0u?=
 =?us-ascii?Q?kdbgyNBFgEQcJpBk+8MYpEMMur0eA6cwHMPO7ZVt1eDr1pUX9YsZHCmD89DK?=
 =?us-ascii?Q?omQfF+AscE2vbWS26XYnkgQZIF3VyIkxn488MGd+iPlFOudQp2KfwEBuSrCV?=
 =?us-ascii?Q?zFBZPBa39yfReZqY5Kouagb4WFn/sgQhZvpGZNabLd6vSCN6pq1AwQpMV2h+?=
 =?us-ascii?Q?LGYCEV/AHDpePTXWdyhvBCespsylKiQuMK4Q34k/z8rp5le0bvd8dnfzjJyu?=
 =?us-ascii?Q?zBxS6YWZq1/roPJ6h0gllI7UH+0Y5Ck6YQPV6C+Yn+1qbUIWStmKGVaGfzhy?=
 =?us-ascii?Q?KNTJ3XhDCwdl+nQzIAn2TXmzItPZo7MQ5dIogrjgBly8C0quELs0hBV8ap4p?=
 =?us-ascii?Q?eEj0NFoikUX03AYSWTXrWqcn29D6IU6z2BIm9v0xRAG0OcWfOISqEkVAaseA?=
 =?us-ascii?Q?HYjHJmsOgtvZN4TQxDxOtexTtfBKCCtdt4CS3raFFhBuRRIxrTc1xcDHoM7h?=
 =?us-ascii?Q?jqFtACTyigow2hTNpHymmSvhdKNDef8gfWyh/sZmBkO4Y5lHgT6P/hQpOrr7?=
 =?us-ascii?Q?KR/h0lxPHRmlzhknWic5XXcvLcLrzQmUoAno9z5lbZJpjihd5TlpIWk2NlQa?=
 =?us-ascii?Q?fqHt123fv78/4sD/NVjA2K/SL/Iv19oCpZc6L6DCUbRXuj1esfOlaAhf2HI2?=
 =?us-ascii?Q?ENgBo3hGhhgFs6SaLhvM4WV0bgrQE4QzsXFvrRDxZU7GzpnqLdc75zy5szIl?=
 =?us-ascii?Q?cc9IDHJStARGvn0PHpCtNSWZG3jLomzEvAmO3pR5J3FaMLOS4z9M3DtBj6XN?=
 =?us-ascii?Q?4jxQ1h8BK9BOob0oobMDqEZUfx900sa2fraokE4lXA+ae0PDNe2QX9rh7odG?=
 =?us-ascii?Q?MdGDLv9PQiCofW4N01d6e0XzmaKitibWE7Rj/3lQ0GwwWqxo6cOO93xsu4pE?=
 =?us-ascii?Q?MyHuFidEe4KIh7a7xp8EoyWIhz4HFSj/7MQuFm4P7wfYipxFyQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS4PR05MB9647.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tzvx9rjLm/HTZRf/e8WRp6H6wVHM2L8vneblxouMkn/0XBah23gNLQpv540Z?=
 =?us-ascii?Q?CcejerLm/cuixPg07ljViM50Reu9RUosFYfjQUr+2dWb+3J30LxXvfyPuJ4o?=
 =?us-ascii?Q?jr1S0/JicEfZ4iHa+pFOtKtp1vV3URDVr2hsjrBbQ0NTRCaabDU/Rdmp7LYy?=
 =?us-ascii?Q?xWh3ehMLaGiVA9MHON6LcYZwh3bZSeI+sfHN03R4ryN3CAJ20J22zcuSge4H?=
 =?us-ascii?Q?/vsZDPhS1AWZxVBtEszFcskfAphKCt28qfIWGuPqV+1S5vqjQ6xPk34FzBYN?=
 =?us-ascii?Q?fjNQC0QwWlJx+LyI+17wbxAGgCcfjna90T0UrunsuZ9jtAfCO+8KpfIruc4V?=
 =?us-ascii?Q?/9nPky5hnl1sMMBKUUTRLOKSVieQxyPudyZuoxOXQf951odPOxJnCYXEToPT?=
 =?us-ascii?Q?u7GnrERTMewKrGcQSpS5nnMuxDLPMF8v3dEx92ZlkXm+EN7p03qW65xDm+uV?=
 =?us-ascii?Q?TnQsUhvMR3l8lCPVBA7238k43RfHqRZqcOWYLC0UVPVZjEoej/EYoJcxIuSR?=
 =?us-ascii?Q?7VOnhh4nyZMIpTphTBc3QVCehq7JXiddeVkoTU0CqrUP8BC+j87cdCcdhFPO?=
 =?us-ascii?Q?TrpSIrerRZl4lsPEsXfixre1dfyOO7r93K6RdYdOb4fteRO1W6oTSLPnWio2?=
 =?us-ascii?Q?OSeAFE1Og9+rBdPamNz+QzyELId7W627W/ZarcrLjUxfVpIXnpsHvGn3Zv6f?=
 =?us-ascii?Q?o+KKFvrX6j40RFJEoTLu5cI4xVlK+iuPi96uvnIhlUwcDyoGGLzClU5eFotu?=
 =?us-ascii?Q?reZAsxt0YjfTIYOk9awUWtWfrEqg8juWuib527DA4SEUDWGwx+6tbmg8bdbd?=
 =?us-ascii?Q?IgkKOASy4CM77X5OV9ud4xJywo0+B8lyJd/SnmG6Oxt85c1hltg0t3IVktIB?=
 =?us-ascii?Q?gGUE4IpX2OlHVp5uQqzm+4Ns6uvU51+UtoMHpzAYQC+m08MnmjnKb6/WwCkr?=
 =?us-ascii?Q?w6mv3EmqwjJ3Kp/EyqY3rDXuTgHRpWA6giSgSeGG7nsxCOItblFrYVdEzohC?=
 =?us-ascii?Q?664uGStfAt/tx4toYwD463VbypsEf/1/zvGzxgeyR2/AZl57jglcgxvhxf3i?=
 =?us-ascii?Q?wxqFfAS3BdE5W6chh+uQK7UeW4Ocn9cdsPKhb5Pp9lHH+VBxpKaEy1jFxaX1?=
 =?us-ascii?Q?CPRhwa4IlZA6YWbAE5wUp3OuEw+WEyaimN7HKTKPEYHbeybVa0n6aAjZsqSx?=
 =?us-ascii?Q?sqwzSrIrZA6ayxtlMybgTJcOW1SQv+pYEiMH3UczCSLj2TCXGuhi4AOd41ce?=
 =?us-ascii?Q?zc/ImX1wEtwokCOil2QVTgMaolHuij/D3+qptzaFHzh8MLA5olKGvOz4CW/5?=
 =?us-ascii?Q?WJLJ1k/m7fEi02/bF5a+O5+KFx9EslGB2eR1QtSJv8eWAwixwU3JOujqXJxa?=
 =?us-ascii?Q?03/LdRb9RlmiN/bUp8RUbEwl6FNHS5O7ZQrlCyisgN1PTpzrTwbvutJ469QV?=
 =?us-ascii?Q?5fZY1IUX0t4Q49R+kDaMkPuNcHbODxA8+sObbLp1j9KqwliCi4wH1IFtfhpF?=
 =?us-ascii?Q?lADu0P9h6LkT7spVjVqHOcVat/cLHsO37UB0B6yFuOVNp2b8odnprxpQu6gZ?=
 =?us-ascii?Q?dT7szhAghlLD70fTcG2JidX7R7efBIXXVM9DN4Qc?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR05MB9647.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b92ca830-ced6-47a9-832e-08dc9f351eaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2024 10:02:47.6082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UwoC5j6Ax5GD/iEtOABJMrqpQCXfdon0EyJwKQeZgP44YcMPmVGcmm1ieO2eTCPZGy2EwRbMazZOH3Pu/ieJQV+hiHAGTplc4et6h4L8k+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR05MB7767
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: >*Jun 29 14:45:36 in-debbld-33 kernel: [1724399.196945]
 Unable
 to remove publication from failed node Jun 29 14:45:36 in-debbld-33 >kernel:
 >[1724399.196945] (type=20185106, lower=1, node=0xd1045013, [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [40.107.22.98 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.22.98 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.22.98 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.98 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sQlCz-0006OR-MN
Subject: Re: [tipc-discussion] Reg: TIPC Error - "Unable to remove
 publication from failed node"
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

>*Jun 29 14:45:36 in-debbld-33 kernel: [1724399.196945] Unable to remove publication from failed node Jun 29 14:45:36 in-debbld-33
>kernel:
>[1724399.196945]  (type=20185106, lower=1, node=0xd1045013, port=2177385505, key=2177385506) Jun 29 14:45:36 in-debbld-33
>kernel:
>[1724399.196948] Unable to remove publication from failed node Jun 29
>14:45:36 in-debbld-33 kernel: [1724399.196948]  (type=20185106, lower=1, node=0xd1045013, port=2177385505, key=2177385506)
>Jun 29 14:45:36
>in-debbld-33 kernel: [1724399.196954] Unable to remove publication from failed node Jun 29 14:45:36 in-debbld-33 kernel:
>[1724399.196954] (type=20185106, lower=1, node=0xd1045013, port=2177385505, key=2177385506)*
>
>###############################################################################################################
>######
>
>
>
>Any idea why this would be happening ?
Memory error could cause this. I observed the same thing in my system:
"
2024-05-27T07:27:22.747+02:00 kernel:[425219.492047] {...}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 0
...
2024-05-27T07:27:22.747+02:00 kernel:[425219.517622] {...}[Hardware Error]:   section_type: memory error
...
2024-05-27T07:27:22.973+02:00 kernel:[425221.704107] tipc: Unable to remove publication from failed node
2024-05-27T07:27:22.973+02:00 kernel:[425221.704107]  (type=143322, lower=9, node=0x1001009, port=1295954722, key=1295954723)
2024-05-27T07:27:22.973+02:00 kernel:[425221.717912] tipc: Unable to remove publication from failed node
2024-05-27T07:27:22.973+02:00 kernel:[425221.717912]  (type=143322, lower=9, node=0x1001009, port=1295954722, key=1295954723)
"


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
