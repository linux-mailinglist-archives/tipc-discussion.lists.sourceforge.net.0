Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF3739A5B4
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Jun 2021 18:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fs4xipGxdpeOVzM2BZuhYbJ+H1uPxFU58n4nTQDHtAQ=; b=Ph/L0oTLQjoGWHRLlQTgFArhE
	nGFgN96AHcfWE1HVRmQkTxB35dfSqjb4SLx+kJjNh5YbDywD2ImbyEGozhxXEmiMCpUNnVgI2HsiN
	VD3xXxzBGOhQ4/cscbw9IjPY4lJ05QTVrxaVRx7LQCfpguFioZ9im/yG80+tvf6iwhlzs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1loqBv-0003GP-01; Thu, 03 Jun 2021 16:27:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1loqBt-0003GI-3W
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 16:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4acI1nJzR5NaMELSb8b/9TOswI6zNuzsaco8A3y9ti8=; b=gsALYxbpu0ceYb0m+NkK7cafUN
 mn6HwRzzi3YPKUXjhg/NB0PpOXsQzeHHvYtBtGbOAYukpgyOmFBd3Yv+x7dD4lGaSCnQU9Smi/+d0
 WnqdoUZJDgJ1Gci1sQFinSFtqEjTDP1xxfV28US9KUtrYAJCiOSeKBk7Sn2d1qL9apTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4acI1nJzR5NaMELSb8b/9TOswI6zNuzsaco8A3y9ti8=; b=d+sbgZ8SfpPYF1+dSKL1RApCjR
 VsVp+McB0FfZmhMjdUgft+mz5OGUpe2DfuEYtYAzia5EOHXPUbBU0Im6FfhY5LkSJlDE4AGjR2HBR
 By2rtWnqMe3gEp8HmtFyX0VKrHWoDNHc+88I0ODEpXEPCezqCCIkcYZ0iTjfZbJkpfro=;
Received: from mail-eopbgr40114.outbound.protection.outlook.com
 ([40.107.4.114] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1loqBf-0000AF-C4
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 16:27:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xl0n2BzCqHKYn8qwBilkrzb1gs3qMUu/Q7vaeX4UkW9naXp4n6s43xhNWeUN8onlgupRi1CUCF6SeHIQaMJamaV9glpqZhLqn3M0j+5tEUpO8fg/zFPxPfKTfypbhnPZ2lOP5NAffzQvjCyqBiNX0OyeqUzUtUuWnbh+9pu4mqeW53j5hivIGkw6c39J+2orW5lSy9cy4kpfTPdBEBM7stmkn9EGbdNqScVTdIh1N/quhxcfhNpRYdJc/OkeZ3TDUAyWV1Ca4W3Zq+0Sqx5RB5Qmes2/PummuXKDH8wtpmWmjBzLUGXTSqXE8fBXT1V62QrqrebfJ8Q7nALGRiyVgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4acI1nJzR5NaMELSb8b/9TOswI6zNuzsaco8A3y9ti8=;
 b=dBxsA5ukD3NgHqWpR4LxsEkpCd4RZADpqapkBGcuNCl6PyH7Wg+x9Cp8+ScdCvrAHHJnx1ZqImmujuWkLGgEC+zHUWbsrhXmkqWvpPpfewhfm+4i2P+EBLBG6ISI331tgbxEMfDJQc/rB387+OeBmmDinQn1m1L1kdSqnwkpm6YsE7Wl7IOkCqBK4d6ZH5SCXIv6lcBkGhYv1PsWFw03ahItJOiaP2LqksRomeqlKZrkxETsfkRG7wa2Qdvs8K7Q7Jm+XIeM513nR7emneU6mzEyIR0nzO2onXSSPtNfTRurUeafZjN3oAqV+0VFTSGsIqwGnMfdG81ZUIDTWHQEZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4acI1nJzR5NaMELSb8b/9TOswI6zNuzsaco8A3y9ti8=;
 b=hhN+cfNlgP3Ckig1JZa+TmxrozYlTVnnv8m990ifkbgslXQzgP72WGDO3Ul+APhJqT4tTrW/qnBJPsZEwFXUR37GEJMmoKaWTJYcc6PiQ7HSeOU7mVYUgHtklsw6UVGq7eV/SZ1qgkPYPXuPXWdwOg/GR7DJvuDvkbJsoZFr7u8=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR0801MB1967.eurprd08.prod.outlook.com (2603:10a6:800:8c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.24; Thu, 3 Jun
 2021 13:55:19 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::3944:16d7:bec1:677f]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::3944:16d7:bec1:677f%6]) with mapi id 15.20.4195.020; Thu, 3 Jun 2021
 13:55:19 +0000
To: Jon Maloy <jmaloy@redhat.com>, Xin Long <lucien.xin@gmail.com>
Thread-Topic: EXTERNAL: Re: [tipc-discussion] DGRAM/STREAM Crossover on Debian?
Thread-Index: AQHXUi25+IKGy3Es20iTN08hz5OBfKsBM4KAgABOyQCAAMX1yw==
Date: Thu, 3 Jun 2021 13:55:19 +0000
Message-ID: <VI1PR08MB41927531472FF499217E50B2853C9@VI1PR08MB4192.eurprd08.prod.outlook.com>
References: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
 <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>,
 <a31bf399-7c8e-38c3-44df-c3ced7c55864@redhat.com>
In-Reply-To: <a31bf399-7c8e-38c3-44df-c3ced7c55864@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c83ab9b-b8b3-48ca-c861-08d926973974
x-ms-traffictypediagnostic: VI1PR0801MB1967:
x-microsoft-antispam-prvs: <VI1PR0801MB19674551E637EA6E65FA7E6E853C9@VI1PR0801MB1967.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CcJnXAtxtlOHaicfF9kam1eVhAL2LiOFqJRQC5CfeEKSMGxn9dCC1H1xhv27Bxw8aO/d2hWKMUBTiTW5FJyVtTFhQX8swXxVJVZcI7yo/pvaq6oYJVNgdeTx8ZFoSHineymusgdVfA3S7+ddfUFV7LtALPlRfKkqudjHVRTDnM2ydjCvBK2sRxaDsXH5JY654FkGADhbESo0J7TtQPm8FWEQDYQWd+VJMD7i9daTI1l2a3adXVStd/EFzZwde3sXCmgWkEJL1cybCoJ5/3g8lveACd0zu+CUdbu52QorAKTVOM70sCXxuZP4ZZHlXPbKXpgY+1o39sUVMhAwiRzwhSbcdUE4nfG4R0jk9le3KhV+HffssZjmmMzCiTsFNR1+RFBphN62sZ0MJIqwzYhQJ2Bc0h01xZn8OU28nkXn0ahHn8qh4AH/p15wFc4N9fyXQqK2TEgfw0waV9l6bKdI46Yd0xNz3u+dcSxvdiim67rgjXCG10GD4uYcsYcqdx+/Ev6J8TJDDYHrGntEMbDkyPAAtBnrSboHw5eO/1/GOPXD92SxCqGjD24KN66TdXkE7Y9j4w/mu/yUQn4kKDdyW2xFw+s1+mtpKBIjzftCzj55VHOaoMMYPxC1SWrbBqW7I8PWBhXNX6UB7ZLBuwZD7nju/V3hQ0bkkqrIINfdN1A+u9xGIM4oVb0pC2ln0bZ/pALvHYfUDQk/qiw/TAqi/QtvDL6DV15ILEgMq8uAV3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(66446008)(86362001)(91956017)(66476007)(66946007)(33656002)(6506007)(966005)(76116006)(66556008)(64756008)(83380400001)(478600001)(71200400001)(26005)(55016002)(110136005)(166002)(9686003)(8676002)(316002)(4326008)(7696005)(38100700002)(53546011)(2906002)(52536014)(8936002)(5660300002)(122000001)(186003)(45080400002)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?4O42F+J44QuGCyLa40Sb1917pNixCUZ7iUl/T7tmXK0GaCJlLQ3iI+nR2P?=
 =?iso-8859-1?Q?hAiro1I4cDYiMd99FfomEwJ8/aPgP5a5DTZUcxV4mvsyNw5or0JC7EgAHE?=
 =?iso-8859-1?Q?CkIZVRujdVYgZCbUA6l14It7cZrSlRUSaoBQqMjRSw34qz6bVimM0vsMnU?=
 =?iso-8859-1?Q?PolXLEzTUqcxNIPtPqapxNcQFU7ydx5hyPqRe82N9BV+7qxz8UTrBULyJO?=
 =?iso-8859-1?Q?korc3aIPSWxq01j/ZxCmr/Ojk4y26bBpH3twgae4K0QGdmyKVBMFlNKD1Y?=
 =?iso-8859-1?Q?SPaV00PwfhlzDfM4w+/fb1+/ASudmrQ0U8qExKosG7OqfVQIELPGGyz8SN?=
 =?iso-8859-1?Q?cf91jNZZJP6MtMByjm/AXK8hJIHY7OIGU9bzulrKoETW68VHpTPhefIX70?=
 =?iso-8859-1?Q?3qpAhbHMbnLmL4krrTY/HHlgm0kH365Xvp3g/vdNrCmzj2RqDvW1nIFLQU?=
 =?iso-8859-1?Q?TvGD1O53wSUPx2ce01fkxtvySkiQ1yZy5UO+0mICdfN/B8HbrCTw3wuaCU?=
 =?iso-8859-1?Q?waSwHu7xnRfMomLsVbWkWFSV/tjyCb5F2VhzhVavTaVKXjvniZNxThhibe?=
 =?iso-8859-1?Q?snqLWp7rksQcmSSLUIgYRUkYTdo2iN9uP6V1wmoPGFpsIJIQRij+iqpMHO?=
 =?iso-8859-1?Q?0dXzcSLCoHbz3mYFLqvY/0CKzr1BaeCiBYyyy/3euPC2/gShWzLspCj44Q?=
 =?iso-8859-1?Q?1n6LtJanNzu8HFyWp8shm+F+sasYMvH/JkAHuex36Mhf1oO55QauYQom3P?=
 =?iso-8859-1?Q?y/4p1+ZYlBehq9wq8N1ppt454zqYIu9s7QTZjvTt9rFXcptiZjFIZ9oP+i?=
 =?iso-8859-1?Q?e3wlr9AEl5oiiDvnKCKIzYXl3lLb4Y8b9A4B4jC0/oqE5HYJWW6hFZ7wuY?=
 =?iso-8859-1?Q?AVKaFCukb9ZqdMU+0dukJcwYsc+xWmRZPVewovj/AHK1LsJxRkVHikGa69?=
 =?iso-8859-1?Q?pK5uVkP6+9NfLyUrBXmDL59WKUoFuQM1hKoW90PU1mnt7PwLWlkv9gsb7Y?=
 =?iso-8859-1?Q?ATL7zgn6AJu3QzKIvLE2qb/gRNt2J4UVmW98rlAwt0ia/GMeoDQn8gaqmY?=
 =?iso-8859-1?Q?3a5iv66KfgJC8ep9uXIelX8iWevYxrKs0mMK+QYPDGcg4vdtKAAZcMg33R?=
 =?iso-8859-1?Q?6wB8yPKj8Z067cgFI+lx6oayCEXdOvqP7VYo0VjdlUhOtYBeUNqCcvD+2J?=
 =?iso-8859-1?Q?slzS+ASEUrugiXmhEINDWg9K7nKdIw4mUhg8ZE7Um8P1GSlCBVfpC6pTKW?=
 =?iso-8859-1?Q?8BKfosZOdoe2MsvD0L43A5fCyV06/K06qpwtSzYKBGDbrLcZqY8ndqRQks?=
 =?iso-8859-1?Q?yauEFoXBTrG2ZMR6Oe7gG+gkT7pgDZQDnq/O7mvH6KyzV94=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c83ab9b-b8b3-48ca-c861-08d926973974
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2021 13:55:19.5138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KyKFhnSN8Cw5KzvUtvHnI5w9Cf0m6px2/zUTfHMr6Drif/p5aj17YiU1bfdSYlpfT+k2R1SjRLyC32f/RfKTRLRva5VC6SefycvoK/E6XTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1967
X-Spam-Score: -6.0 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1loqBf-0000AF-C4
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] EXTERNAL: Re: DGRAM/STREAM Crossover on
 Debian?
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


Contrary to UDP vs TCP, TIPC is only one protocol, so you
cannot bind the same service type/instance to different socket types
without risking problems.
The SYN bit will prevent a connection from being established with a
socket of the wrong type, but it will not stop the binding table lookup
from selecting such a socket, since it knows nothing about socket types.
I am actually surprised that this works even on the non-Debian machines.
Maybe the secondary lookup mechanism is saving the day.

This could of course be fixed without too much effort, but the question
is if that is the right way to go. At least we would have to carefully
consider possible compatibility issues.

Would it be a problem for you to just choose different service types/ranges?

///jon

   Interesting. So, accidents of implementation aside, you would expect DGRAM, STREAM, and SEQPACKET sockets to be able to communicate with each other? I'm not using SEQPACKET (yet), but it sounds like one might be able to connect() between STREAM and SEQPACKET sockets today, though presumably the way that send()s on the STREAM side get "packetized" on the SEQPACKET end is not clearly defined. If this is what is intended, I think some clarification in the documentation would be helpful, as would testing to ensure expected behavior across socket types. It is true that bringing TCP/UDP thinking to TIPC is going to lead to errors, but it isn't going to be rare. If it is straightforward to keep communication between different socket types separate, then I suspect that would produce the least surprise.

   As for my own project, logically I'm dealing with the same service either way; it is only the DGRAM message size limit that is pushing the STREAM fallback option. I could require a separate service type for the STREAM implementation, but that is another piece of configuration which I'd rather avoid, if practical. I expect I will keep it the way I have it while I'm in experimental mode, as it seems to be working as I expect on the target kernels, but I'll need to be sure I'm on solid ground if we ever manage to get the thing to production.

   Thanks.

                              Gary Duzan
                              FIS - GT.M Core


________________________________
From: Jon Maloy <jmaloy@redhat.com>
Sent: Wednesday, June 2, 2021 8:56 PM
To: Xin Long <lucien.xin@gmail.com>; Duzan, Gary D <Gary.Duzan@fisglobal.com>
Cc: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: EXTERNAL: Re: [tipc-discussion] DGRAM/STREAM Crossover on Debian?

CAUTION: This email originated from outside of the company. Do not click links or open attachments unless you recognize the sender and know the content is safe.



On 6/2/21 4:14 PM, Xin Long wrote:
> On Wed, May 26, 2021 at 11:38 AM Duzan, Gary D via tipc-discussion
> <tipc-discussion@lists.sourceforge.net> wrote:
>>     I'm in the process of enhancing a TIPC DGRAM-based RPC-ish service to include TIPC STREAM transport for larger messages. To simplify configuration, I have the server process(es) bind() the same type/range for both DGRAM and STREAM sockets (poll()ing to see which have incoming requests), then choose which to use on the client. This seems to work on most of my Linux systems (RHEL-8, Ubuntu 20.04/21.04, Fedora 34, Debian 11), but on my Debian 10 system (4.19.181-1 kernel) I am seeing messages from a DGRAM client appearing on an accept()ed STREAM socket on the server. I have confirmed that the client is not sending anything on a STREAM socket, and the message received by the server is formatted as a DGRAM message (without the message framing header).
> When you start two scoket on the server: DGRAM and STREAM, in the
> client's nametable there will be 2 sockets with different portids:
> # tipc nametable show
> Type       Lower      Upper      Scope    Port       Node
> 18888      17         17         cluster  4063960415
> 18888      17         17         cluster  1106254118
>
> When the client calls sendmsg()/connect() to send msg to the server,
> it will choose one of them by the rule of "local, closest-first or
> round-robin".
> The client doesn't know if the peer is a DGRAM socket or STREAM
> socket. In your case, it should go round-robin.
>
> Without this commit:
>
> commit 25b9221b959483f17c2964d0922869e16caa86b5
> Author: Jon Maloy <jon.maloy@ericsson.com>
> Date:   Fri Sep 28 20:23:21 2018 +0200
>
>      tipc: add SYN bit to connection setup messages
>
> The SYN msg for STREAM is no different from the DATA msg for DGRAM.
> that's what you're seeing in kernel-4.19
>
>>     Debian isn't a target platform for production, so I don't need a specific fix, but it is still surprising and a bit disturbing. Was this a known problem with the 4.19 kernel? Are there particular reasons why using this pattern is a bad idea?
> I think it may not work as expected if you create 2 different types of
> TIPC sockets binding to the same address.
> At least on the latest kernel, once the DGRAM client chooses the
> STREAM socket, the DATA msg will be dropped.
>
> Thanks.
Exactly. Contrary to UDP vs TCP, TIPC is only one protocol, so you
cannot bind the same service type/instance to different socket types
without risking problems.
The SYN bit will prevent a connection from being established with a
socket of the wrong type, but it will not stop the binding table lookup
from selecting such a socket, since it knows nothing about socket types.
I am actually surprised that this works even on the non-Debian machines.
Maybe the secondary lookup mechanism is saving the day.

This could of course be fixed without too much effort, but the question
is if that is the right way to go. At least we would have to carefully
consider possible compatibility issues.

Would it be a problem for you to just choose different service types/ranges?

///jon

>
>>     Thanks.
>>
>> Gary Duzan
>> FIS - GT.M Core
>>
>> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=04%7C01%7Cgary.duzan%40fisglobal.com%7C68e57e4f23b548f804b008d9262a7be5%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637582786180071891%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=VNEWWSJ4euG3QutIj3MXmPpOI56vPasJtcdFYM61ToU%3D&amp;reserved=0

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
