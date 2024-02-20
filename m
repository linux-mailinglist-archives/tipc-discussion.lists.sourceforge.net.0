Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 179A685B3CB
	for <lists+tipc-discussion@lfdr.de>; Tue, 20 Feb 2024 08:19:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1rcKPj-0000xn-IY;
	Tue, 20 Feb 2024 07:19:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1rcKPe-0000xL-Aw
 for tipc-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 07:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EBQXpTgGM4da1xNatR2YXRdJGe8NNr7vlmQyaL89SD4=; b=j4SpfBtAKZNTnqjsUFBXMwLu+w
 Gxp7NVgtwlHUuw8qmKP2K9wpTFIgM51Fp7HotxbYZCPbGebzJkPOycQ1E09uUJ26+hN1fI42Wk4UL
 6pDVZ3uLrfPjZClbQZpgp2GEPxHAaccOOlR9ymhqbL/bH3SkFB8+vEDMm2oOrkEdCSgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EBQXpTgGM4da1xNatR2YXRdJGe8NNr7vlmQyaL89SD4=; b=U+cZS+gTs8Eh1xx49gzPeRC0Ug
 cCgodKVK34T6OsJPzxEQOqzP4RmR1iFCUUsxET8UcpxoClROn/GrjGYP6tJZlVq0Ac3SbG/LZBLPQ
 /gDDIFp5V8sWiPCejJTXaF4Usx2bwk1qVDM43kit0CyE8D9jKOPM6thvquJhozoPieoM=;
Received: from mail-am0eur02on2135.outbound.protection.outlook.com
 ([40.107.247.135] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcKPY-0007gr-N5 for tipc-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 07:19:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ow4YVgknEJ3BGeEey3VpQ3tmyGp3UlwVJKgbOi1BLcZ0fR2Ldt9xKHnpnWdIToz+ec1Bowf/4wKicfao4Eg7rdEqWTakVJgDQ7L53smEEuyS9M9fwqEIL6B2uO8x9o+2NTv2IVyWOoYia0O0y7HS4CT+3X1IOKvI6efT8fCTAAmbNmYX6SuM/3qoX6+stg8uDza0lLr5CcpaOyJ+kHYUljj/9ah3jPAJDOCQGszQE+B9Su8dBsvcKAZPeCf3WCw4O6VjdnZJfBOK8evCzYM4rMsOmf9YXaFxRT/PmCQAGUrymsXbUD8a1HmFKHLQdclS4i5vVpc3B8Gn0AUNYI/uiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBQXpTgGM4da1xNatR2YXRdJGe8NNr7vlmQyaL89SD4=;
 b=eroVp3WjOKbBrDHqLlmmnLdKq2JKQ/OLF3KLxX7P2/xPA4KmfOwG1mztjDst927cj4a3gxuLqPenrOdHtPY6FzCK2QOATXZaxD7X0mTefi+cn46fIWrUeh5dUE0DUMpfcSATtHQ0GQjDDzN00UtRy2DB+oZ6h8MaloT/0gwTM1ppnlwTcld4Zp1LOX3p7Vn+Ms6F7uOVWk2GLzZYw0MqvTCqM/P3JHdTe3Cl0vMZ5+guEXjnNBG7nDj/svzAiSRARA0QeIvj8ct65nngExWSioNungrlmZNbz0JGOcBfhIJ7QBH8UGM3WNyC7hTWulSs7s0rt4Vgruq9pYqlWK46aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EBQXpTgGM4da1xNatR2YXRdJGe8NNr7vlmQyaL89SD4=;
 b=fb3o7qQT2ztHmVUdy6rHqlzzvs4IL0PWsbydbOSauEnYtlKeuNk7VJAfOgKGMHXcK68KYKihGKn5qKNmIG6TtEUAghzXc5V0bA+7qG9xi6MlhAUh36CY/ZYof3CvOBjpH4O863+JsDQdR8rJX6q1un8SrnimTD4fBAM8/V4sxiUHQFjXXXb12Gba+LFXPu3m5HUfamW+zVcgCVj3Or1ZNYHvzrijygAeDiJ1i0KUNEH59Ud0cZ2aiJj1/Cyw5Fu/XM+vNc0l28zpY4QJ7eRMpRii4NUUFKangAQKRPxlvoVdszExUwfK2VhMD6ZozAJV51fzodHJzktXtXpy6mhXcw==
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com (2603:10a6:20b:4ce::15)
 by DB9PR05MB7932.eurprd05.prod.outlook.com (2603:10a6:10:250::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 06:46:05 +0000
Received: from AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::209f:43fa:8733:2ca1]) by AS4PR05MB9647.eurprd05.prod.outlook.com
 ([fe80::209f:43fa:8733:2ca1%3]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 06:46:05 +0000
To: prakash bisht <ps13.bisht@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] Reg: TIPC socket buffer size recommendation
Thread-Index: AQHaYzlYdOGbno5iXE6NrI25shEOQrESybFg
Date: Tue, 20 Feb 2024 06:46:05 +0000
Message-ID: <AS4PR05MB9647A2ABA657FA50BE034E3888502@AS4PR05MB9647.eurprd05.prod.outlook.com>
References: <CACB1WsS8yG7QidBgjA_HDb4UcX1wrugseQRNkEvDvOzxSGMpHg@mail.gmail.com>
In-Reply-To: <CACB1WsS8yG7QidBgjA_HDb4UcX1wrugseQRNkEvDvOzxSGMpHg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR05MB9647:EE_|DB9PR05MB7932:EE_
x-ms-office365-filtering-correlation-id: 617575b2-e2d4-48b8-a010-08dc31df9c7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fornf5g4VjjA5/zsRm+PH5f8nyhaaI0hHVbO/Q44qNMGFIJqZmK+zB3kiNB7Q6l1nkiHEtCbnu+ddNIeQobrk3CVmJfxDDqURkastlgemjK0TnJMgwxdoCS1UGZ0I8YCKmeJbSFg3YOev12MUYqUl/eMff9fP9l6awoOZFdTLhmX6PzIOQ5iw8EziHI+zNIckYZXK+Gpt9h5CuoxITzBxwCIUbMCuLibEZqZH5/P2KDHXDeMu4IbSnZj5zrT3Qs9tDoS52n5mw7ZMofDzCKBYwwn48NOqxSeM9+lSO93n6ULfeGz4j/EBbsHKAtEVxHvavy7QxrTfIaey250TtA3D1tG3NUz1ycdAy40fO4YQ0na1MFW9RWV3yRisfffk3avet3Jrt/pZxIYOD9xDHVNbSKG3Qc7LGe8kIVrIgnsOqwjzXdCojCqtZDdwRX7hFZ+t/2rRadC3JCa+WKrL7KJ7+q63pFk1fxF4V1pE5HHeKqJwowuOrVgskLJ/m80ITiNFcqRH3Dx41h1Lv0SC4ejB036MntET0UxMHIo3FXlMtU85ihQ4kQxnPXgKOv8AEgHHxTD7MbH44EHwJlRYCRL9Uva8lCRoO8Pjdi1NJMQzlNW4npkmVdOBFkPVT4Nlwnx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS4PR05MB9647.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qpOHUhQHMnccEf9Volg9B5ZUzEEjaE8phqsTc52B4rjD+xOWXMTrjOfcXYFn?=
 =?us-ascii?Q?ohXLKhKGFGW0WzzYqg36iKOK2Jt0a6dVZClNIwqjTZu7pCt55qiFU77zxMe1?=
 =?us-ascii?Q?QWwSrPrJfbO2/z5K/gnuTsFAoihZRffdWHj5/nRKlWFJEle5PSPfK9oyKTER?=
 =?us-ascii?Q?43K3/aFrwLhw4aYkmMUemMSDB3TT9TNMe30wzADXBHGARInUPSbNqg+TYyHX?=
 =?us-ascii?Q?N3GPvI03tv381Gy+LC+MGi4YjaW5mH8Fp2Bp2wrhCtd3xe1neLzhjT8qcSy9?=
 =?us-ascii?Q?FU9gTi1Yp86x2hov5R9NFtBkgSfGYf7uuYwgUAbqwhHlloscFFHQp6giOPZv?=
 =?us-ascii?Q?kZgfkpE3FrzqGMAqaK2xDBvIKvMqQHVFDnbw1GwkcbrD3mKAaHaWuEtTZwTG?=
 =?us-ascii?Q?y2bD1wVn7KiJYwCyvt9SvAA71H5ZTqL942EblidKxrmOEtpgKJOdJgEcCoHZ?=
 =?us-ascii?Q?hqrBkuuvkrj6xiReJuGHu42C33JL3e3ywgtzhg8N3amQJWkwWfMVx8h8uU0q?=
 =?us-ascii?Q?mBI83TjkGMRwbCyyBb04vBuMQxX/Dye6FV+kwXZnWBe1nUAKkvzMDf9wDdoq?=
 =?us-ascii?Q?VkEM+8MQvbPcb3FSnsr9xjxoLwrKUIrbD1XVAxIPsy+KCw71jyuEjVIecn6k?=
 =?us-ascii?Q?8L3mIOVsEX0VRPER8QHRUN3akKPz5il7xFPcLlqjxgL8U8/sTsbQZ+hOy1Fp?=
 =?us-ascii?Q?7HTTRL41VLOsGk942rgSB1uzEN2oDt3mozoVTTXduRHXg0q52XvnnSISts0K?=
 =?us-ascii?Q?uyQ5cDxjEXBWDpE8XgeaO75hyC+rPaW8i7n4PgeePzsjdHi7mwgq9+hw4g4N?=
 =?us-ascii?Q?bm3DqucZWRIoebJ/JY6pmDAOZtLwYqFSUjkaFtlGI1aEUiJDY11dB5Ae0RrJ?=
 =?us-ascii?Q?JNAY/LM3PDfKMUuT+Ii6u9zRhS++5RqjGmNAbes/8oagK8rZjRui518nvyRI?=
 =?us-ascii?Q?+9kVyRPxvtDndB11srfGpShxio5F5yoK1w+tfSpVVt15jfhqo+WHa7ADrch8?=
 =?us-ascii?Q?vczSPZlbr7hKpZh49K6sthPcDFoh3/P5i8Hb23mW8mv5k3rBGitIC5Y/lla3?=
 =?us-ascii?Q?NglXM5g3ecveRloHXFq4dUjpAJmV49+IQJBXlOaIXUEHsVA+5nCuWZToPcxv?=
 =?us-ascii?Q?4zefbMtOsoAKU+B6tbBSANVBFZgX+NBR0J2OFe4eTNQIdiswS81vSq3UnUEX?=
 =?us-ascii?Q?WR4xqO0KQEtURRiuD1jXNKqtV1duZiaAuockRW4tS0KnIhr/NufchUGooBDi?=
 =?us-ascii?Q?j9LqLCjSY8PcQrOze3ai6epXvcYNummJaqUTDUbS+pVTkQ0gVDjRwdSOrTle?=
 =?us-ascii?Q?AnqRVIKj16fwl34WqRkJiKcNac/bmgbg1+OoXUytxuRV0l2755HHKmUzrmhF?=
 =?us-ascii?Q?OSymcaqcslA4eK8+C1fqTr6xFQuNx9Z1OqzbrFJDvhHXrDoZp2khAbu0RhVc?=
 =?us-ascii?Q?wpSC9Im2js1LFUHl4+j+NM+k0bEGTDYaXOPWM96WBFzRwlgrVDpwuWqzRaRt?=
 =?us-ascii?Q?G9BlMwfa8PVKWsHiqkvguzq8UIcxiN09DHfBWjhDf88A4cB3/vAXTJAfBLdu?=
 =?us-ascii?Q?0ifXwLM78PzifwJ72nPXsHP4aY2z/AkCd3KAmHdm?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR05MB9647.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 617575b2-e2d4-48b8-a010-08dc31df9c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2024 06:46:05.2416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HxrT8J22fDf0d7AF+3psAaIewOJWZNuASyppc4I/0tkQsVzza5ovYGcmZXY6bYhxVnEDLmiNWqjDoUt5n+YXuF3t8RVPLGca/gGtNQdA+M0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB7932
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >1. As TIPC creates a UDP socket for a bearer and multiple
 TIPC sockets are kind of multiplexed into one UDP socket. Can it slow the
 >performance when the incoming traffic is high? I do not see any pe [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.247.135 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.247.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcKPY-0007gr-N5
Subject: Re: [tipc-discussion] Reg: TIPC socket buffer size recommendation
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

>1. As TIPC creates a UDP socket for a bearer and multiple TIPC sockets are kind of multiplexed into one UDP socket. Can it slow the
>performance when the incoming traffic is high?
I do not see any performance down in my test when using UDP bearer.

>2. Can we increase the buffer size of the TIPC UDP socket alone without changing the system level default receive buffer size ?
>
>I would like to increase the socket buffer size to reduce the packet drops and be efficient but don't want to change the default value at
>the system level.
There is no packet drop at TIPC socket level when using SOCK_SEQPACKET. You do not need to do anything.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
