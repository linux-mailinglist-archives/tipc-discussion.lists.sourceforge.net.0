Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CFE48CE82
	for <lists+tipc-discussion@lfdr.de>; Wed, 12 Jan 2022 23:45:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1n7mMw-0006GM-SO; Wed, 12 Jan 2022 22:45:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1n7mMv-0006GF-I2
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 22:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AAOdWxGe5r/itToONiBw1rsIuRM9WhOe7h+Z7EUb8Js=; b=AIs7AguZpARynB9gbrZRcA3HIn
 P29TlDdZjkpbjBatM7WnxgjTHd2BT5jTrXxdtovIk3yNesZO/OJThG3NzmN/SiT935mvj8e4slALK
 GvNQlWI6YWQyd4FhxugIfxsRlXhCiwzyp/O4J9PAs1siqCnLjfpm/ZDzyCcVXyAJTQn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AAOdWxGe5r/itToONiBw1rsIuRM9WhOe7h+Z7EUb8Js=; b=I8tMug1h7jDwCorySnaWetsWJe
 NknCkGxSWBSZXMJYmAwZf2q7vs0QcUsAu2SLjF7WhMJ+kUJszFLPkz3XJ77du9Iu05rb2q7fjp/2s
 L0Ac0LN//s8jxGu/NgCkaC6dPwRg/Ve/k4P/ECIbCVhgL4FR3aHnVECisPz2HQutlQ4E=;
Received: from mail-eopbgr140130.outbound.protection.outlook.com
 ([40.107.14.130] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7mMq-00Dsv0-Ib
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 22:45:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZA8okm+1dbrG+DQt0ZdmUTg6DTr6aVmKMjv0y5e6pSjBQ46Sp1kRFczSvam/NgkHt7X8bYXkcJ04qPrgxTFI2kzXSNXsGRhCe40RhobhA7BHgaOVVOKEe52bYJ3rOic+rDxqdLa9JEa9MvkHHv2PgXiFsQb+UcWWIGrEe+oSNAUgyc8uGk+9LEgrt4Vr6QIkuVumWJy+CptCyKArkmIqLA3N9bQFUQRW1G65x2Xe6USFx+JzS0TFyAb2/sm6ahlnW+FCGmBukCspznTkePPtDv9x+6AX/pZjo77wPcc94wD7MoNbTH8xkjKrV0qo+n72ij6rTRdd1wsbwtAB1CI69w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAOdWxGe5r/itToONiBw1rsIuRM9WhOe7h+Z7EUb8Js=;
 b=VTbgi6pLrKRFNOM9+8uhLFwivALdP6a0LB/xwNhwM80FZtaGK04OFEJQNCgJGY1982SZLoN3tFpnDOYe4XKSofymy4aq3GhWONnT+sxsY4U2SsajEfwJX17b7IbBaGFapZM8t2WTLAYHhHXiJnXGhj7/u5fSyUv0ryzsPQE5egPPLQrriS9cLtk93xTf47sXUKvrDL9M9xKnMHZ7oER3i1mfqKZY+sUNy1fO+iwLLC1l6b8dHbAm//Z9JPvTJz6D5gbs9FAuVBmyD0kDGm8/x1Xn+s1mUlNeHjHDIQMbem3mPCT+kQgE9/oIyGI7chKQlb5gk9XVHeoMe7IRM+eaFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AAOdWxGe5r/itToONiBw1rsIuRM9WhOe7h+Z7EUb8Js=;
 b=gnQNAozI6mIErnEQb+PYVYDWBHD5mNC1llFqdCquGD6rv8OB6tXJHcouuiuXlLIPu36jZoxDvGJlSXGXPTPinZmuBFS/1FoVboHrltRXQhKIasj2tq9aG3I9R6hVkvWrJasocGDEc4MnmOg2N4fy3dF08P0JRX7TjubWjY28pOE=
Received: from VE1PR08MB5583.eurprd08.prod.outlook.com (2603:10a6:800:1ac::24)
 by HE1PR0802MB2185.eurprd08.prod.outlook.com (2603:10a6:3:ca::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Wed, 12 Jan
 2022 22:29:11 +0000
Received: from VE1PR08MB5583.eurprd08.prod.outlook.com
 ([fe80::3c93:911f:75d6:33f4]) by VE1PR08MB5583.eurprd08.prod.outlook.com
 ([fe80::3c93:911f:75d6:33f4%6]) with mapi id 15.20.4888.011; Wed, 12 Jan 2022
 22:29:11 +0000
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: EXTERNAL: Re: [tipc-discussion] TIPC Socket Liveness Check
Thread-Index: AQHYBzwDbbBVOr8WEka4LdW3k5Tr4KxfltYAgABgriM=
Date: Wed, 12 Jan 2022 22:29:11 +0000
Message-ID: <VE1PR08MB5583BA6FCA0298E9B6E9D22885529@VE1PR08MB5583.eurprd08.prod.outlook.com>
References: <VE1PR08MB5583B828DAA9C4004AE3C56685519@VE1PR08MB5583.eurprd08.prod.outlook.com>
 <5a3ace9e-33c5-b290-4bf5-fb3f380e5655@redhat.com>
In-Reply-To: <5a3ace9e-33c5-b290-4bf5-fb3f380e5655@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: e170be7d-01c2-e384-8631-48c51922f9a7
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62ac48b7-00f1-4822-d7d0-08d9d61af507
x-ms-traffictypediagnostic: HE1PR0802MB2185:EE_
x-microsoft-antispam-prvs: <HE1PR0802MB218590D437AF490C10F2A3EA85529@HE1PR0802MB2185.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7BhDE0aY9Ai2v1/dyHH3l7Rm3fY0E4EMZAB+nyl8oY1DKkDeOMeZFUnAq1SS6n9lFHPsf2EsH7opIezS9adYr8kXQXqrkeFdmHYt09YeUPZVBljW+fSza8eORI/KCNShNPdlMDtPEv14EWM4L0gO597F+OmqPiyhxZjlhOe1fxosnExr74bgbrRXZnfSIJEl0QCH7sYHer+kTc+GHhN/HlfYRnXn9nAa6aMpMGIH/6E+EpZAytB04OsMxpxtTDvz9ddGib9BDCdKYoqPCzMxsBVv8yf9JMc8QAQvT/pF1a2xa8r0dcDpTji18BoD4lNKHd8HVZZzvmeTrnY5Rvj3j9ykK3e2bRgUWXeCSsSlijnfwal1C4Z/ef5y5I3gXthsVovJCi+hXkY8/hkMzwwEiocHRPr0ZJo9AfhCv83aOLn9Hx8KhXjWY3epjo6qpWkyuEF0nmqFvylxLgM0QCK63DRn+DhVq3VrdjVDmukIdYjfXKyxiLDoA16/F7yFvy5/W4bm7fRmTwxWbr0rKHdoRUYv1BjklZ+JxzCmKvU1irlZtBHCnc8dwjgIPKZJpLfw1pZ9WDsXyfCMVE4cOYfnLGddDgpEG/T5OrP6++u1p5eU3HqA1WuVoFJAg7fOYWWghm4YCgVQj49PvB5v/ZIKxtiACHc79cJMxTGaLdh5x+olgHlFRKolQkaViLMVVfN9sNObqohl3bnc+tIlczUd7LQOaDpSG/pwaALcC+aM3CZ40cbxytlvGCN5Kz0DuVfSBlRfJWA4AghC9hD+ahsFEyLQ+M5uwsFAOvAqfjy05PE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR08MB5583.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(966005)(86362001)(53546011)(6506007)(508600001)(71200400001)(26005)(5660300002)(7696005)(9686003)(52536014)(2906002)(186003)(33656002)(8676002)(45080400002)(8936002)(64756008)(82960400001)(19627405001)(38100700002)(66446008)(66476007)(91956017)(83380400001)(166002)(110136005)(316002)(38070700005)(55016003)(76116006)(122000001)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zwuJ5Lo+qIxpyMezLUaYo7DVjJVwGrobaOLcfgWjajJTJ4nFfDRwKkQSZRuL?=
 =?us-ascii?Q?ZWEav1SzrNYEsNBRlzOKC5C9WbwtTpx/Emk6BHeXNGng8seE3bhhoUquEkqW?=
 =?us-ascii?Q?ZxIK9sWyMNItNew+8iJIFZ68bx2cocNkqXSF75LauLeVJuGloIXhfxkM0+FK?=
 =?us-ascii?Q?HhpL48pmQ0xWn7jgu8vyIIcI5Ib769o84SP6ASbjq0IBPs0lDOJ/MRvYkdsN?=
 =?us-ascii?Q?7mgbO6GvtQfcwARKZmu1SRw3dc44idqQAqIv7rDDNrNAWwafz2XkL2LX5M09?=
 =?us-ascii?Q?zE4w549rpi3abrRWav/yYAisvz/Qm4Jp/kINS9ya00pceDRXCyQIcoisVyva?=
 =?us-ascii?Q?1TLZNSv92A6fZ/tGX2t9BqxWtMWP0ADEGxi4Ka75YlGScvJDetoS2t9wpe6E?=
 =?us-ascii?Q?X9miiy9cf+BgrzYxy+66eE6TgmBvB7O+Kr5P0kgCjHYHE1ltnr0M9v1CdRRy?=
 =?us-ascii?Q?4io7+Ra+lDuI0kAt5f/29cLJWULkW28M+lnV61AJ1OfQIpk0Fp/Xf029MAbA?=
 =?us-ascii?Q?qvbDLEvsjmW74loN+rmb+rprfYNUI0EkRt5BWHeBbzpwXkkicYWa2uICHa6a?=
 =?us-ascii?Q?gquBIIJFzrNjOn52ZY94uenvIWKhZ6WfHjNbgZgcehPd2ZDhBMX98ajw03uV?=
 =?us-ascii?Q?Wtx+L3R8vHgAafFrs1jq3FDG6in4xhkrYnw1ck3jyLZkZFSy1wcbF7hpak6U?=
 =?us-ascii?Q?SlGHFKmQnVk0vNI3KTbhR7aeU5uh0JxMqZ2gTA7PyenCaI1VC8dtwGgj442r?=
 =?us-ascii?Q?XhBCQW8lVDnjQwsugLmYhq0NGPcmG7KaLU5mmkbyfm/zJJlM7tY3VN0WbHOv?=
 =?us-ascii?Q?M+lIaWxOtmbqegi5zJq6ZFxd+8VY+KiMSeXDFf87vi+JrCZKdrkIF5stMn6Y?=
 =?us-ascii?Q?fqjPg3CHJmy4FxwSzfHZlqqT/JsOzzS1l4f7hU/ozf1pULA2Fwtg+i866kM0?=
 =?us-ascii?Q?cMn1UODrp7gRJwy5mLOCf3N6KoorbRyXl6dZErJQoax0RmbSB+mR0DNfUMol?=
 =?us-ascii?Q?aUUe31/CpN+vAmuw2Ly1uGdEgA2dYmL2BRSHBCFe1R8upIgAyVmZjoCRy9ut?=
 =?us-ascii?Q?GCGDMncFTNv+fFLjOkumwoxoqw4cPit07kklqPJrPfCSFfAYvSpgnNUbOjjA?=
 =?us-ascii?Q?IlJz29hCFbz2YRvmfUHaNUBr5lA42smYlI5N8eI6lPuEewW3Y+nV9ZgtR4X3?=
 =?us-ascii?Q?9ikfP58rigm/81pZDDHOYW9ZKnxfl7smZZJ5f4Ku2x8UtsUveMK8nYLBLau/?=
 =?us-ascii?Q?FuQnuW2Ntr5boqdIBlYF+qkhom7Vlr9jvEDT9qh1tyOdH044sryuGA2UJ+/k?=
 =?us-ascii?Q?mAHpyKqCegDT4prgxAHxrts7Mvey1EZw9Mq/5c8kwAuFVTsGOt4qETOLpCkS?=
 =?us-ascii?Q?70c5KPiT0eW3gipuq+wlY2TJ8bVCMOXC7xC5KH4IjAPMFhEuXO10sq+DLO+G?=
 =?us-ascii?Q?nJD9UIiwlwjquLesW8czDn/Sj6oMyAu7EevlJuzIaSMTK1jKEQaBTl3vMY90?=
 =?us-ascii?Q?H6coYhaaH28J+sBI8FmetQbZNIorEqA4i97qvn6psQw5SCFfjVMR9KfhiOXI?=
 =?us-ascii?Q?ap6GkR0qq9Ei0qUo0/Ubggd9Hd17madJ5xJurGzLoPqfumOEmpHUJBUaXsxU?=
 =?us-ascii?Q?Ih2XvRd/sDMQbcGuuElSJMFsIuike/sDHJSBdTQ1wbpLcg+aihc8PC2ba5XA?=
 =?us-ascii?Q?ZROdFg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR08MB5583.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ac48b7-00f1-4822-d7d0-08d9d61af507
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 22:29:11.7464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GFlaaCEa4S38XymRY6pIB9ICyl13IzIcNGZ0ME4KrroRjK2RUFkTWT4t6TYpFMEWLHJ4+l/OE7NnS1aznjjYt4OrxkQEG3Fc7OGFv22QgBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2185
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/11/22 18:01, Duzan, Gary D via tipc-discussion wrote:
 > Is there a reliable way for a process to determine if a TIPC socket address
 points to an open socket without disturbing the target process? [...] 
 Content analysis details:   (-8.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7mMq-00Dsv0-Ib
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] EXTERNAL: Re:  TIPC Socket Liveness Check
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

On 1/11/22 18:01, Duzan, Gary D via tipc-discussion wrote:
>     Is there a reliable way for a process to determine if a TIPC socket address points to an open socket without disturbing the target process? I'm hoping to be able to determine the liveness/reachability of a datagram peer, at least roughly, without taking on the complexity of additional messaging (or group membership and join/leave tracking).
>
>     Thanks.
It depends on the socket type and state. If it is a connected socket
there is a built-in mechanism that will make sure that the peer socket
is immediately notified, and the user will receive this notification.
The same is the case with group sockets.
For DGRAM sockets there is no such mechanism, since it is impossible for
TIPC to know which peers need to be supervised.

///jon

   Thanks, Jon. I'm dipping my toes in the group communication waters, and so far it looks like I will be able to use it.

Gary Duzan
FIS GT.M Core Team

________________________________
From: Jon Maloy <jmaloy@redhat.com>
Sent: Wednesday, January 12, 2022 11:37 AM
To: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: EXTERNAL: Re: [tipc-discussion] TIPC Socket Liveness Check

CAUTION: This email originated from outside of the company. Do not click links or open attachments unless you recognize the sender and know the content is safe.



On 1/11/22 18:01, Duzan, Gary D via tipc-discussion wrote:
>     Is there a reliable way for a process to determine if a TIPC socket address points to an open socket without disturbing the target process? I'm hoping to be able to determine the liveness/reachability of a datagram peer, at least roughly, without taking on the complexity of additional messaging (or group membership and join/leave tracking).
>
>     Thanks.
It depends on the socket type and state. If it is a connected socket
there is a built-in mechanism that will make sure that the peer socket
is immediately notified, and the user will receive this notification.
The same is the case with group sockets.
For DGRAM sockets there is no such mechanism, since it is impossible for
TIPC to know which peers need to be supervised.

///jon

>
> Gary Duzan
> FIS GT.M Core Team
>
> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=04%7C01%7Cgary.duzan%40fisglobal.com%7Cc5807cf1a5404ced672608d9d5e9689b%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637776020722484859%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=wXXdGz4V0iGHSXNiljgBu9BW8HjbYr80SuXjA3g1iK8%3D&amp;reserved=0
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=04%7C01%7Cgary.duzan%40fisglobal.com%7Cc5807cf1a5404ced672608d9d5e9689b%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637776020722484859%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=wXXdGz4V0iGHSXNiljgBu9BW8HjbYr80SuXjA3g1iK8%3D&amp;reserved=0
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
