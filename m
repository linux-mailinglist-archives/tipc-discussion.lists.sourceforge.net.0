Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 646E254DF9B
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 13:00:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1nEX-0001q9-NO; Thu, 16 Jun 2022 11:00:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <JonasGjendem.Roysland@carrier.com>)
 id 1o1nES-0001q2-QB
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 11:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aEiyi7Pma26af8kRwByXnUyYcX+aosCstFda007DLzw=; b=SB52Jfn/PFoLmHRJRGjEa1rV5H
 JxwrcTVEZVNcinuDDr7EwtvekH85dBgixiONO3nRrWH6i5yqzQisROWRHCvjI/GRiL3uT6phHN3Dx
 uiPBoO9nGSmEqxiG6w8sfipk6B7YZX6iSJYNawuFpeJ6OZFjVHZDuEFiRHhvbZGCEmrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aEiyi7Pma26af8kRwByXnUyYcX+aosCstFda007DLzw=; b=e
 cSSJAD3WNdJJQMDGyNSOFQurPtYP7n8YoqJhjvxBKykf2EEUNJC4miSO+EarzebYe+/M4SlWrVWCS
 +TjTOc9AFnhJJW0WZXpDhuqh25yV5ljBrhUTGzic56nYS0lB0wZUR4b65zBNW5Rwtmgq3u4pCJG+A
 julhABdO6Za2Yh7k=;
Received: from mail-bn8nam11on2108.outbound.protection.outlook.com
 ([40.107.236.108] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1nEE-0045jI-2d
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 11:00:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TZGxiG1zyY+LuKK3rFC4fdBw8/G+LPBsDte2p8kCOT1Ax+9Yc55QQESon5CysBnlXvsIj5R0aUlwnuA7OeHPZ+9Qigc0Tg59gL8Sq61w1zIZ5+YHthnvjWW2c6za8CUwxZLeja04RQLFIFtYD616lqgdfj6Jl+78Lgot5ZRUMlDRWbIoe9IsIApUMhzGc4fo9bvM6OpIDFzAo0uA3lmVn5k7Iz6sSen+1WK3pZKwNB/S9quiSPVYQ2ZM1v8frV7eDezfdl7W63N7uNMubdmOu9MFYWTh6/q1W92+c5RTQYeMBT+531sFlrRK6rMQ3rUsmYQ3/b+mLVwPd901Yix+Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEiyi7Pma26af8kRwByXnUyYcX+aosCstFda007DLzw=;
 b=UMxCidcNYFUtS7KwAlEAQj7typv/UJ7w4jL2H8olRnKFihAQDc7XeLbQtDXihh1eqVwhDVd6xXEn2OBagaTK1bTiQmBZ+M3Le4Qka8Vo7DxbiQIPzFR9KqXUNTmMSt3pkR1bVyRnKAAvvaKBcN1fOt7M6Eql+a9SEf785h1acwKIUzEUSZ4WU12zJHK2FZmjoTCkaXGZV8ea6Fec1rRV+nDqK8lE761V7Hcyxu3MKXuUSVqHD0N92bcfnPoIPn668fJ+mR5z2NAsohYT4mZU/VnfFFGd9rojuZit4pjTC0P9mEZY35TNphIlaTtiUycNtnDwSUYI8PE1JrR4agpskA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=carrier.com; dmarc=pass action=none header.from=carrier.com;
 dkim=pass header.d=carrier.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carrier.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEiyi7Pma26af8kRwByXnUyYcX+aosCstFda007DLzw=;
 b=CVFx8Ex7eABNknpyHpBLEXtLuOYlDXAdfrgjFZeX4Qqp4p1WNw7/xisR01axh+6Ky3ARuYco1mOoHRGHzNHG5y1ufCu++JvDMKoOlaWtkeIjMWAqORXQ6aUER1dhma6Ww8n3GSMqDhVq5zQMq8BrSvsgozDn039IcLQMOaEq3HWQJmnKK5BGr4pn2L4c+gAA21GhFuG0JVrw/XnjvY/i6nA+QeiB2PiGEBPiAP2PqPyr3nrVZ0dd0Talg5gmNOmfE/rByK228kIIcuB4Q/XVhG0xuc9TDCFrZGRVoox6iacKl/DceWNbEuk0S3s3o9PBSrR1Tkoq4qxp3rljKicj5A==
Received: from PH0PR06MB8569.namprd06.prod.outlook.com (2603:10b6:510:120::5)
 by DM6PR06MB5227.namprd06.prod.outlook.com (2603:10b6:5:107::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Thu, 16 Jun
 2022 10:26:22 +0000
Received: from PH0PR06MB8569.namprd06.prod.outlook.com
 ([fe80::2567:291f:8199:477a]) by PH0PR06MB8569.namprd06.prod.outlook.com
 ([fe80::2567:291f:8199:477a%7]) with mapi id 15.20.5353.015; Thu, 16 Jun 2022
 10:26:22 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC Terminal Problem
Thread-Index: AQHYgWoh54UJ9TS9O0Go6FIj4mfTXA==
Date: Thu, 16 Jun 2022 10:26:21 +0000
Message-ID: <PH0PR06MB85694A4AF8B967ECCCB35EBBE4AC9@PH0PR06MB8569.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: b8d782d2-2705-32e3-54f3-6577d4733bc8
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=carrier.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f66dc92a-2001-45da-cdcb-08da4f82a89d
x-ms-traffictypediagnostic: DM6PR06MB5227:EE_
x-microsoft-antispam-prvs: <DM6PR06MB5227033DB03DB089DF36E711E4AC9@DM6PR06MB5227.namprd06.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 97YZq9iNxr/evQs4mkCIwuLx5C3lESGmS6CpiJcJXRkuH9urY0rs/iOdlyOmneBrRYKnqXcHIfF7TehmIMkKv1lud8jShO5u2aFszjGC0espZ1p0r5ugeSdpGAEOOLKpczlpmYwTB3xBpm2PlROkmu6wngP+Bs6N9jmWqtC3OF3IHLNKrqn2TEcbhc2BQ5Ir7ZPACK9/PDhzKaZ2vt8azmcQ6Q7IYxlsBLj0Mly/EycIhlzpZfq9Xs7U8GDNRak0cMUhf3e2vwOfgC1ySL0AcN3yQsTHM39HUQPy5BBCA6h/RAHDd+Ro6qZvGRcoWsgB3Srb2D8PTZSBNHE3glYj1OFo/kWpqySkUZfiuaQ+plOA3qqzuW0EnHSPfFGGlV5OElmu2SLl8q22WTcw5JwAju10D6gnwUEMbv5rQckOf6kEWSQ6aSR6PdaIVOPZaHURDpb/y1KfScKkYBToOUT6GH6pt8DEY/HcTrmNWMsna9XKJN5xq4aX2I0JSAiywJA7XU9ZKKI9Jq2EnURssffFre+fVB0Ac9kuKnxysEl0EJXb1SHoM/AhW41hfsqwvQKDFG8fOce75O76H2swUo94QBzzVSQRzsJ5A+RmNmTr0T8J0PRMzs+1qANYxUPIk1y29gHErQbrp1yWx15YI42SI/u/D12AkuggItv07Jvmrrf2P9d71MKH7tNZvyF59QNCe4dQMn8YsPItGgpRqjCBsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR06MB8569.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(3480700007)(83380400001)(82960400001)(38070700005)(26005)(316002)(19627405001)(6916009)(71200400001)(122000001)(186003)(66556008)(4744005)(5660300002)(66574015)(55016003)(2906002)(91956017)(508600001)(8936002)(76116006)(66446008)(66946007)(8676002)(66476007)(7116003)(7696005)(38100700002)(9686003)(6506007)(86362001)(52536014)(33656002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?RfW5Pk3kWya284DQyihAw5+IrBWFu7PSSfdhsLKko3o2StIZD/Gi2vlA03?=
 =?iso-8859-1?Q?NYlZDPGnaJZEZSJVC1ydap/36thAP/Mrot4Aq3At45AVcneZFUpKzR28Jc?=
 =?iso-8859-1?Q?9DaHpkPMSh3HtwuWDeSBsWw/OjuYKusM9DJk8uZN07LcaATnX6LUpGZizh?=
 =?iso-8859-1?Q?6Zwg7HFZbJ2ZhSdo5zi7IUU3AuUukX7q4QijI36U6zF5uPnoGX2j6Xtf83?=
 =?iso-8859-1?Q?blvkfwWM+YMiMs7oUeXyqct2T49BWVLxid6lOaM55+eQYthKKXYedCVHJt?=
 =?iso-8859-1?Q?3ZmUg0fhJbkxY7V9L67JSUf5NAnsh7vU+XQ+4XpsfPkxEHdALN5LkSWVtx?=
 =?iso-8859-1?Q?IpZeq4L5f0LIy58eQYKFr+Srh+pzQmpaO7s6e42mffM4dH5v+atNQU4Z+D?=
 =?iso-8859-1?Q?S0/khPp7WU8/m63GmEv7vL8e2PlIM1Ja3RGPic10Bizf07RsK9GvdMlUV2?=
 =?iso-8859-1?Q?gpf5j++yUvLD3NFie3VPUsPkWitd3uLs2oMh4yT1O4k/92bLkQubGuF0dB?=
 =?iso-8859-1?Q?CvX2gddI5oZzuCJg9aMiBAQgZ2zyNDaEdzAgd+9+//PIvOXEGRAY9N+GIz?=
 =?iso-8859-1?Q?yWRxnViWJlMnH2k5tN1507JR/fuxIfNxVvwiO+ZZl4q6w90ffhsFHgDngl?=
 =?iso-8859-1?Q?mEc//Vk/xGZjYwef1dw+kaOyK+Klw5m0M3yFMQa9tZDZjN5QPXZp6WCKGr?=
 =?iso-8859-1?Q?Efwy/LpuxnrHF+62APtfTP/KohUAfwEFH+V33NAbJ55+aoqvpjLreCh2XZ?=
 =?iso-8859-1?Q?Kf+oqYEAwc+Rueu7UhfnlKbsq89iLwyI2fpJQqkSlioDw1B2I1/sv4QOVr?=
 =?iso-8859-1?Q?yHHtiPhEJ87sKLzNlHBUGPx4xnkaJ45uNAFP1zmX5OgBq1HGxEeg98pfVR?=
 =?iso-8859-1?Q?QSyDVuJiNO136mHr7+h65DuRqtqlDbfGDKYQ/RdhSY6ITQTo7fn5lqCB+K?=
 =?iso-8859-1?Q?7cRJ2M45peFJLozuz0H024Ldkc5rs/OU4CSrfNiexkxaIYzVfgZyriCwQP?=
 =?iso-8859-1?Q?79QiM9+Wb9iOnr8Dx07zHAFMKvf3Ls2fQWvuDhCjjM07S7RJtDdwXZbTqm?=
 =?iso-8859-1?Q?1x1yyAcuh7clJy7t8SX0nbKPLnsuXh9ts1ZIVujWDh0QhCR+YMSUljvezq?=
 =?iso-8859-1?Q?LmlKSXKEiASoO5rSTlEfNQmsOx5dIjEXHjpIUP5g/czQJHebUNcaYrez3h?=
 =?iso-8859-1?Q?GQcpHSotod1RJyX1sO7kZoZffOce+n0I9pI2iL+g85TQcpam7u5FerACFh?=
 =?iso-8859-1?Q?jsqHntsygrG/p1qsp/rxj31TK1ramLGUk+XAIpGvqr76AGo3JsMDJThsOo?=
 =?iso-8859-1?Q?xx4vhxomdmIy0mXD6A2jzgh6jghBr6iKaQIgwFzLTHlmwwwiMbaiiY7pWe?=
 =?iso-8859-1?Q?qPmPfgqxYCfMyFgE4KBNvdPmvbWjtYPFAawwaS7+hfD/KOpPQ6cgkzEN3/?=
 =?iso-8859-1?Q?YiXC/71vPtNtTAcgR8/AwShfTn5UCxZxa2bQGsiBNuvk8LRU8Gdd7LQMev?=
 =?iso-8859-1?Q?/XuiD89Y27MSJACfklkDUyKNg7xhGiWqzBxfOtxrvnqO6TLUfP1aEhr6K9?=
 =?iso-8859-1?Q?tjf8MeJX6pbbO2AJ1YLu6oyGBBZiwJg6CgQ6qWIETPse9DjUgwaVVEXok/?=
 =?iso-8859-1?Q?RX5M6HPdTFpwqx67eLYQdG7CpFem1jBE5tgLhpq3wpWlUfmCBBypB2XOSm?=
 =?iso-8859-1?Q?O0/tcN9aLWilgshzpiP9JHRez5xxQ+mDaxMOe3XwR4Y1VMSydbNaIBy+LM?=
 =?iso-8859-1?Q?CEZ/YS1FPXkpFE5ih9UC8fGzrRHnLoC+I32zJatbvhYrktvcQ6dy5ODwNg?=
 =?iso-8859-1?Q?K0QV7jCxgODaHTi8PuAuIoEoZqYlaFU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: carrier.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8569.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f66dc92a-2001-45da-cdcb-08da4f82a89d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2022 10:26:21.8978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 36839a65-7f3f-4bac-9ea4-f571f10a9a03
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: olrR1jvAKLjax1qp7aK9EjMxGFsgG0KSWOcMoHUhU/cuQZ67z9b4zQpL30nnXSNl38WUNmeHpohL4O+J08UBxuOskxP4E9rxkOMurDrzmJ9fiZBHHXYI0mhHFp6JaZwH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5227
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey, We are working with the TIPC in the terminal and trying
 to connect a client and a server between two different linux machines. We
 are using the programs hello_client.c and hello_server.c to send and r [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.108 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.108 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1nEE-0045jI-2d
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC Terminal Problem
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
From: =?iso-8859-1?Q?R=F8ysland=2C_Jonas_Gjendem?= via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: =?iso-8859-1?Q?R=F8ysland=2C_Jonas_Gjendem?=
 <JonasGjendem.Roysland@carrier.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hey,

We are working with the TIPC in the terminal and trying to connect a client=
 and a server between two different linux machines. We are using the progra=
ms hello_client.c and hello_server.c to send and recieve to check if they a=
re responding to each other. We are setting up the nodes and the bearer and=
 are following the Getting Started section.

To the problem: We are not sure how to set up the nodes in different machin=
es and to link them within the same cluster in order to be able to communic=
ate and sometimes even though we enable the bearers we don't get any of the=
m in the link list. Is this a common hardware problem or problem itself. Ha=
ve you any idea of this problem.

Is there also a way to create the nodes from c code, like using the tipc ap=
i library.

Sincerly,

Jonas Gjendem R=F8ysland

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
