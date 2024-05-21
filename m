Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4728CB43A
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 May 2024 21:27:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s9V8z-00011e-TK;
	Tue, 21 May 2024 19:27:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1s9V8y-00011M-F1
 for tipc-discussion@lists.sourceforge.net;
 Tue, 21 May 2024 19:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Z+TYuTnMqC1tsZMlvg45e/22wzD6Ivz/oxVBnq1Q7s=; b=KxfIMkXEUVaRYYobZnkWTvKFCX
 1ap4IybwTXGyQdQfttIAiBau8ZadC0RUoUIBNoH18thEjEs7lb6BQ7IQTo5b0dSoTYvDG+F2mZs1M
 V+8xsQfD6R3cmRVRVDhbRqui2jcrz9ukbQoEWI0tgUQhfXxWRSNlefeQ4eU+dY0ThpVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Z+TYuTnMqC1tsZMlvg45e/22wzD6Ivz/oxVBnq1Q7s=; b=O2/BUwiR/Qk7Kkyng3RBoPdtv6
 gNMReUXUYSi/YlRM+6uy2veUSUFJuIJe8jkrLgJGJYXe7RWLobI6ellbGDzCl70I9sLS3pKJCL5mE
 frN9Hiage6T++FvwN1IolOA6aZt91GTqPw2o4w5F+E6eTiTl04EMdfnbSehaKtzm/QPc=;
Received: from mail-db8eur05lp2105.outbound.protection.outlook.com
 ([104.47.17.105] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s9V8x-0000l6-IW for tipc-discussion@lists.sourceforge.net;
 Tue, 21 May 2024 19:27:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fibySQn97h7Mqsl3BoQP0Nea6xnFHa1nkIWVnqYP5YUNLkKPRzxS337M8FAkCawYEZp2XH4hrKpljNmAt9XM90Jj1Sxn8JBsLtPN0pvjDaZ5PCqiQ22LXrXW4YpUG5S3n2bJ6qnE4UvAodYOZvmBjs/oxnXCS2zGMGi+SX9/NNU1DaHj1x7x4GNw62Lgyk9DT6MboB7ShEMnqYAJL+5lH6q0Vu7ktblvIUMgKOdvqsnEVCyvSuJEBFso4NrgCAHJxVPNshPMRkrilaJNj4nNTVWbV4SauDhVpJII8/76Rlz/e0Jup4Dszs6c1B+AamhFB9WKrySTPvAagBaBSEq6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Z+TYuTnMqC1tsZMlvg45e/22wzD6Ivz/oxVBnq1Q7s=;
 b=i0X95oF8OpjJ15QJkA/qkDZwGHzVVDQMZzIUGOYFRoKLykWsOeHuqhPPH8AcXhLzMdAUGPSCVx9RG2ABzH26u2xMVoxpvguOmDfETXXNLuDvOXoXmRwCA5WSK83SpXQgdGLFmwtxCkE91esNM2ZT9L4Q2C5oBRI8z/TsLPcNSVHziUSahale5uPa787ThKMm5dovWkAC9sNlbQP9ZnI2WCRV05DIqR4qqgUifi9cVgpaK4dKA9R3mnXvijrysaUnPImzPcvIZBdO6+g1dFPh1AC+CmksRFmGY+IdbXyUEHbLrLxMbirtkFsglEuq8koiKrovso0Wr/AUu0UmEM+gPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Z+TYuTnMqC1tsZMlvg45e/22wzD6Ivz/oxVBnq1Q7s=;
 b=2/bI/7/20fqie/Kj+NNJeqXupclaVbMb28kqZWt+uWF7D73uxwBmOGe4cEpQMefFcNcV2AcivqkWdLcIT2VRFBhY45YT9lykdoKRfubKquGLZB6ClzYSZNlUXxP2uIa3ZV/X01OzMLX4opPFUHkKYabTiGsSyDJ1iwuDVy/y6jxf7KC9Fa1vimVxhl5Wepel7f+5DiTxKzORYMx0po5AbU7VH+FF13M6tPn7k6JE9owvkc0wFeEpu4ZGPb0IbBGZpIWIhem41ugakgGQaYW6tah2k6tZPeANJ3iw5xTina+HnTOZXcMj4kngu7zYfVF7xX1X5qUEbA/41c4+8Gx1DA==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by AS2PR08MB9427.eurprd08.prod.outlook.com (2603:10a6:20b:5e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Tue, 21 May
 2024 18:52:51 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123%7]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 18:52:51 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "Duzan, Gary D"
 <Gary.Duzan@fisglobal.com>
Thread-Topic: Tuning/Debugging of "Retransmission failure"
Thread-Index: AQHapukIxgkrhGtsxkqoix9sU9kkjrGZOuiggAEBGjyAB9E03Q==
Date: Tue, 21 May 2024 18:52:51 +0000
Message-ID: <AS8PR08MB77670B78D1F1B823320D559E85EA2@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
 <AS4PR05MB9647BA2684FE3CBEF9D7025A88ED2@AS4PR05MB9647.eurprd05.prod.outlook.com>
 <AS8PR08MB7767A053713538EF6655FCB585ED2@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB7767A053713538EF6655FCB585ED2@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2024-05-21T18:52:50.557Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|AS2PR08MB9427:EE_
x-ms-office365-filtering-correlation-id: e0166a82-aeed-47f9-e116-08dc79c73726
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?VFdgImwYssC+WSIxWtq3G0yXMAovbPUDwaOnVWz6aEtBai/BNTJSJLR7EatT?=
 =?us-ascii?Q?Lfz3RhBm0JaWWBogjpcsRqs+g6BJhzEOq/8FQg/jQ5x+E2JejL/It5aTrbOh?=
 =?us-ascii?Q?QAPiJDtGiVD9JZ12oWqHdp5LN/UUdYCITJlpqfUGEJQoW5QzDR2ftV2eG6gX?=
 =?us-ascii?Q?Y6hKXvHMtQSC6RaHi8nTMN3VDIOMgsIHA8doVQSWTzE3lTXMNMKQpb5ViO9L?=
 =?us-ascii?Q?jVzeqi7VDRdsIVwjIBn7RPp8nHSbyhtxNDjnidQ44cpwYfgW1SU+M894TOXj?=
 =?us-ascii?Q?Gqwx9AEKMOmdF/FrZYKMdwishW52/GOu38RMbbPV6PItcoSD09CjwUGdJOWG?=
 =?us-ascii?Q?l5jzJ1dCPCowAHV+r64AI90wiG5jQMkH1qbZJpAMvmFAIqQ+TLBbF91/hYKc?=
 =?us-ascii?Q?m2Xm8lV++/Zw0/pi3xA6L7EJS7xxY1CmC4QhplMDg0Qux3wJSqXC9Cf0RtuC?=
 =?us-ascii?Q?3rA+zs3/0a0rfuNCwa0evVyZns/2VLWcddUJXCDa2VdLztTBMOj5nvtYHryG?=
 =?us-ascii?Q?rWqxN3hznmeh0s7488z+UTYLXmQscioTE4U655GMPFAKnJ5vh5tds98/uljQ?=
 =?us-ascii?Q?fWLC+OeiES5ZhjKrDiTSzMReDDqd1dEDfCRDzoP/ru+U3zybeayRW1XnkmgH?=
 =?us-ascii?Q?5jhIViYanRJ8VR685SB5nMV8vKoJ5Es7YXuWOsX/Pp4SeI0EgXjmSM30IsE+?=
 =?us-ascii?Q?px2E+ZHl/QFvVPToha0zJAHAps/jWqMSaBFtvqdZgUGlanEX1oSOMskkny//?=
 =?us-ascii?Q?qkfvlVqsHWgIZ+A6+NwzX66seiFqAJ29zWn2vv+kQxGxVB6KRcCJNoMg8rmp?=
 =?us-ascii?Q?u3QZl4u+al28fw8kTyb0AOQVzhhZxPnOEUQ9s9HNDt4PZkNgROBzUcOLSRk/?=
 =?us-ascii?Q?IcLvyGM44Av03EMkOMMYKhdt8sVVFNzc0VEJcT91x9ILETHZIYbqqMAGikXV?=
 =?us-ascii?Q?UKiTyvzMnhGYxLynkZVN1aNOIOvPzNL9x4NiPB/EhTKug6NWdp1HaUO9wz9i?=
 =?us-ascii?Q?X+9TCmtV7HybOjl5y+Ecavaf0nFq+yj83kwNZELyV44sFVIW7F/dSTKXru1S?=
 =?us-ascii?Q?Smc5j/NxL+7EI8fvlj6BTke2JLCHqeLxLzmr3omaaDjGO+NeriBoDD5f/FVd?=
 =?us-ascii?Q?cpa3vJv+W9HHFciwAPV0taoXs+dykLaIrXJQVDp78hDbYMhiY0jsgzHRgHZD?=
 =?us-ascii?Q?UeMgpPcbfvkRNCq/Mbel+wjsOuT8POufNnJhf+uBJu4YjNom8HMvu+pSndNZ?=
 =?us-ascii?Q?1nZPDC3WXlrgY1lZEXAszuCKsy0xk3H+hVEvyl1dlw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZecuGbqXZ0VycWGLXUjnvaefWeuuI1ff8ctS7cw3GqWBm2J+aumrq2dGsQQt?=
 =?us-ascii?Q?eLfF40VotcopSOLR0Xs8cV3vJ6W2VPo6RYzDD5wkK9UIagnWjlSG/Sulb+bj?=
 =?us-ascii?Q?hVJ5M5ygKW7QKoNkKf7SESfN6zHFnilHT/8VPXhaTJT64X9jW5nw1IzCM3M9?=
 =?us-ascii?Q?MAUvmApkVqnPNCLBGwu16tBq+IWcKZ78Ofmuj+57JCmWGdX3rLHnqxW0LHRA?=
 =?us-ascii?Q?C3ckrRLF4t+uQ5R/S6WDfCrBjQN7UBmCGpP+X1IvNOPC72XQluXTVvONEXi6?=
 =?us-ascii?Q?Qddr9cHoFoLVOwGj/BswG8C08jIdsgWwyUyD4MmgHEHx0SW+b/rZWPLUdt+h?=
 =?us-ascii?Q?gvCdNRLVdyxlGYCHhCgSuj3ogCLji090+9GrIyfdEcDNalngmd58caxERsSl?=
 =?us-ascii?Q?4UZqe2a+lLIgDC5VrgbxJ0bsXT9gGO1zcbQdFAoIcM9eCFAtKr6XnrGxC4Te?=
 =?us-ascii?Q?PWFWj0fICkrqNOzn+0dYYMDEsNVXHWDAZHrgdzxRzicCAt3JHFNy2K1Y8IoT?=
 =?us-ascii?Q?jS/XdpAp6GTP16eehB1zjaoKNhoIsNE/BTFF0PAl2GQqec1L3KmLesKhdEr1?=
 =?us-ascii?Q?t+uBbks5O6lvBER7yCi+EB60tGqEN7kRpPESU25U8pLPD4aQpI0qneyujmNS?=
 =?us-ascii?Q?aZdIQGlF85z/omVELsoDo6RHw+csYfWW7FQ2/RaXaP9eb8pH4+xV3ohml9/j?=
 =?us-ascii?Q?0fsk3jG9DkjwpElmFiw+PySTDkx1vfgROlBY56QLNIBEW5BjMMlWsq/0n1jC?=
 =?us-ascii?Q?ZGKdHTmzMuSTbzxWJiI4ZxOyGwJ9iDr+Te4vR9rSwRFTe6uF+O7b+zWAHNBv?=
 =?us-ascii?Q?fcStgvrRt2HFV0b5ZKSPVfmi5jzuKD7Lj0810CaCmC2Rdvfc5j1IGK9M9u9M?=
 =?us-ascii?Q?4CpCMmxVH0evaSYU2uy8bHaLB3czzswylNosB5ECy8TDYKON1baAZ/laBde/?=
 =?us-ascii?Q?S+F1GxW5jtzzdiquC2oLTM+tlpBRzfmHfwCaZ0EC9hfXYlKu9XCDMlivKK1N?=
 =?us-ascii?Q?AA+bB8Gcdv+R/154hoP1M90WYWse/uFmllbsoRtoBybXg09EA1QkqBphlW5T?=
 =?us-ascii?Q?JjVRgAtuwYwXasi/eUbKPac0wgYAkU4IxmoTc/h0G85qWSM3kdx4BrKdMRgd?=
 =?us-ascii?Q?t+RpwUAtmmnkKYH5jc0SELtJRWcTV/ymaJHMuMKigS7MQqUUmoWmiOqWEGv7?=
 =?us-ascii?Q?8dvansq6KC63fmaRUW57aeIOinkvyjw5p+jPoVD9VDGlASH71CWeap2z8iVT?=
 =?us-ascii?Q?wKU6yzxljbgYgWivGeHSe3ubozoZQmcaiWhlcK5jG5MeKWPRl6Z3GkvZMH1n?=
 =?us-ascii?Q?3dNgS5HYTl6CFRaQEv2I3KvdE3aGhdayJD9VZbxDfiditVoQsuaooGCsqAEn?=
 =?us-ascii?Q?LgMZDoN0PW/8sZAVRlpCwHQSgyp+X/C45ZTQppq1hpnS5lXLzNru/cszkyFn?=
 =?us-ascii?Q?wjV6Iw0bk9EITI4CTpw2c/ty0Mc7x8fGGR5x8PCYulkJ4CNpAbdD+ixNxkHn?=
 =?us-ascii?Q?rAxIrxfpDtrKSr/Dm86Gzz3ramCHFam2z6anD9ovkrUPTRFTCf6uWdswvFK9?=
 =?us-ascii?Q?G2z6Ua57D9ql0mlgYSZSEyYeIUGTQ/HZkXbPEpbY?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 0DYEtjVsNfolmMe8/UNKFyTU2M0B8l6r6vWRmWnLjJjKyZp+N+Je4HWdnHlaFM8dpqoClHdnFfUDcEnGuvT6ZyqTA0MjqvIYusIJMR9ZQEgJXCwtKgE8FRcpF24rScmk5nZt4JV5G746k/Z5sQz3pGnqClRa1PJH9Oid2KMDYn/egWFUFK244wC+XIte+wTw6/AfoemZ+EUFsanaH8Vw3ECtdq5zETB1B4RATM7pfXXXXlMmAevrwLdVUyrKb2HVU9MOWsclvwmdNqMNu4Q3LnJlcE8zibqzDYeNtvaBFl/jcS+Zmw+IhvOiwW6ZtIm7uXKsAZ0cGmsg2bbr6Vtyxh6g55Ajfg03Tf7sdMaykjcF1yB0W3Q1ZWAj30SEGWhdcCKgPGYbo6Kc7Xnm0Qp7SuBrWJAFXg5Vv5t9dEz3eSzzI66iw3uJAce1VJNjPWPmPQhjVNBtcWI6Sq6DCTJqWiTwwPBKkSBUJ5XKnRl5qAGoVBNZ4ykRJqBaaaVjqjlRuhNbIUKqingzTSA70Ln0mV1GTkORTQoxmr/n3Wzjzz6LYWkwBQJfOON0gHLjUqpUbNvZwxAjN9uSC9D7Z2lwnZAZrj1EV0VKjgh/yz4qkfrlWE2J5CdFp7MJhX6DPgDZ5lHVujTkRgYL2KMhUGYzgw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0166a82-aeed-47f9-e116-08dc79c73726
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2024 18:52:51.0283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zUqVOT69pMF84amfk6nhjNRxUUc/bATVbmq6hjqZcLo4Rc++vGEfeRO1OqIpmSQaiccPYybMjplTFf9iUgncmZQLOXiz+DlY/R5Q27Fx7d0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9427
X-OriginatorOrg: fisglobal.com
X-Spam-Score: -11.6 (-----------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  FWIW, my code changes did manage to fix the problems I was
 having with idempotent datagram requests, where I could retransmit either
 way safely. Things got messier for a non-idempotent service with e [...] 
 Content analysis details:   (-11.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fisglobal.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.47.17.105 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [104.47.17.105 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s9V8x-0000l6-IW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   FWIW, my code changes did manage to fix the problems I was having with idempotent datagram requests, where I could retransmit either way safely. Things got messier for a non-idempotent service with either dropped datagrams or dropped connections due to the link reset. So far, the only thing I have found to mitigate the problem is increasing the UDP media/bearer/link tolerance from 1500 to 5000. At least the tests I have run so far seem happier with it.

                                                  Gary Duzan
                                                  IT Architect Senior
                                                  GT.M Core Team

________________________________
From: Duzan, Gary D via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Sent: Thursday, May 16, 2024 4:46 PM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: Re: [tipc-discussion] Tuning/Debugging of "Retransmission failure"


Tung Quang Nguyen
5/15/2024 11:56 PM
Not sure what you mean by "pushing TIPC a bit". If it means dropping TIPC messages, then "Retransmission failure" is expected.
   It just means that I increased the amount of traffic across TIPC in the cluster. I only noticed because it appeared from the application level that messages were being dropped. I do have TIPC_DEST_DROPPABLE and TIPC_SRC_DROPPABLE set to zero, but I just realized that I only have the TIPC_ERRINFO handling on one end. I should fix that.

Tung Quang Nguyen
5/15/2024 11:56 PM
If you did not intentionally drop TIPC messages, then issue could be due to packet drop at NIC (in your VM node or host or Switch/Router etc.). You need to do the tunning at NIC.
   Running some more tests, it does appear that my clusters of larger servers with eth bearers are not encountering this issue, but my clusters of smaller servers with udp bearers are. There is also some disparity in net.tipc.tipc_rmem settings, so I should address that.

   So it looks like I have some things to try. I'll follow up if that doesn't address the problem.

   Thanks.

Gary Duzan
IT Architect Senior
GT.M Core Team

________________________________
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Sent: Wednesday, May 15, 2024 11:56 PM
To: Duzan, Gary D <Gary.Duzan@fisglobal.com>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: RE: Tuning/Debugging of "Retransmission failure"


>   I've started to notice messages like this when pushing TIPC a bit:
Not sure what you mean by "pushing TIPC a bit". If it means dropping TIPC messages, then "Retransmission failure" is expected.
>Is there any tuning I can do to avoid the problem, or other data to collect to better understand it?
>
If you did not intentionally drop TIPC messages, then issue could be due to packet drop at NIC (in your VM node or host or Switch/Router etc.). You need to do the tunning at NIC.
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you. Message Encrypted via TLS connection

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=05%7C02%7Cgary.duzan%40fisglobal.com%7Cd4e9b48e25094d3a586508dc75e962c0%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C638514892444800272%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=C%2F7M%2BcPUuQlPRZIQd7k7OicwrZFtRG6vYK9aFKyfP50%3D&reserved=0<https://lists.sourceforge.net/lists/listinfo/tipc-discussion>
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you. Message Encrypted via TLS connection

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
