Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 897932EAD54
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Jan 2021 15:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gKvjeliTm65J2w9cedmLmexDCH3WAIgForL+FRjXprs=; b=bmQpfGdz5LnnFuZDV/0+Xcfx4
	6dokz+5f5BJo7l4vis//ukJ3zgYcNqc1Z29Ie7zDNgMtrk1zaHDxTvBwVKBLjoHkkEogZgQtoHxDn
	vtfD3hWL+Y5VW7Z9842AcW5Pb2oUTg/6XrdZ+6oWKN7w6hvP/qeOEgofo/0sdl57n/1Ok=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kwnFu-0003Rc-WA; Tue, 05 Jan 2021 14:24:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1kwnFu-0003RW-6E
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 14:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s8JUnQCRCXzu4z0oIddaHTIkQa2/mXapOuR4J7yM38A=; b=DRmMD86gdIYDf6Or5DywdkBmTH
 7Y5/VY/LN2HnpCApwRDYf3cWRjQyjFmpC/tGhfat9wmS17oYdOQkZORhLCgDdlJ4/m80xmHNGUKsM
 fFemLdDLkrvR+v/GVIc5oNeGr6NuXiiQDa9guLf2SX6sxIxqOfssrvVSlQcKxmpQLgJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s8JUnQCRCXzu4z0oIddaHTIkQa2/mXapOuR4J7yM38A=; b=ACmH5I1uOVFqhHF6WCAYbbKia3
 ug4uppWgkKHtr22r4eEEoktHuAaJra9YV2Rcr93i8+9NUMcYfyGbc2Jkm8PRLcWjyqiAqr/xuWvuY
 zond3J8LgcxWExJxtEHvp7Lx2mTP426w6KntNNXg8qjs3WNhY0xRpScy9ndjaZSoANj4=;
Received: from mail-db8eur05on2092.outbound.protection.outlook.com
 ([40.107.20.92] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kwnFo-00AWx2-69
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 14:24:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ToIouFfwaEs8nO/Q4bHx5TQv+xArkAJPZGSa/TC7ZYkLQK//LY7364NVpib0mOGg5XsLFTQvCu4aq6Oc3yB3evv/ub7u4LY3IC7O5XzyBwfBSghqPSACRv2H20/t5tCqLROEy+dHKAsqm8yPRVjj+1DZJj59QJpwT1TKwo1OSnuDxbqzbiWxmDFjzSa6d7tYPMqb57B5PNEnidx//FqfAq5/IjHyd+0zrhSDV01juoxtqrdEp5b9jb02VAM1JUrxK+h0DVNVzdRlgaWNqoX5l85ix7VLcZVoeAzmeuqrcfitNTzF4iGACCKN5K7W7s0Fiinr4SEda204PHT0UDTWJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s8JUnQCRCXzu4z0oIddaHTIkQa2/mXapOuR4J7yM38A=;
 b=TWvhEaTEKxcz1DZl2n/vQLmfGtyaSehXUXo3zNe4xkp61AGFKQ+KDqE2rRjCDNewI8LWbXJQiIo0npRMxkNClWJ47Inm9z85nP17nMUJ4S/Q63OPdi9JntELEOpsBCdlpU+3RhuYZ6MqovR1cvm1bxuGnDaEuC1KHDIUjuH5u0MqgO2uNgMmr62KZP9vOIZZkKwS9rAxGKfvYIt0P/pGxbqkGDDbfx/imfyFtswhNUU6t3MWKF+pzXb5k0tRWmXUh9UQ6fTQLJ2mY63Z8QLDvLIFi8q0Q80unJqdXzyMG6Wd833K2NvDlKRP3vo/7IIE998bnmD7iiFE2Azrmsqgug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s8JUnQCRCXzu4z0oIddaHTIkQa2/mXapOuR4J7yM38A=;
 b=fqmhWTAA+onbzbwBjIoWaZTbeEs/pLjGnY+Yohkm6ZikTlDkGPZKs57G7ZSdFhjnWf9gbB7m0hQuEiGDlcA/XBhLbYVgOFFTUvYTN8piqueA4Qq81jpb4VvY5LI9CYcAfrxV8/PztcKhrg3miJTPJ5sjOowTRspUZBlajJqoEIQ=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR0801MB1966.eurprd08.prod.outlook.com (2603:10a6:800:84::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.24; Tue, 5 Jan
 2021 14:23:52 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a%3]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 14:23:52 +0000
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: EXTERNAL: Re: [tipc-discussion] Discovery between VMs
Thread-Index: AQHW4tSGtYq8SIz7qkm0pWR6OZ56IqoYNtqAgADaOGQ=
Date: Tue, 5 Jan 2021 14:23:52 +0000
Message-ID: <VI1PR08MB41923836D60BA5B77FD4DA6F85D10@VI1PR08MB4192.eurprd08.prod.outlook.com>
References: <VI1PR08MB419220FCFEAC17883490106985D20@VI1PR08MB4192.eurprd08.prod.outlook.com>,
 <080cf9eb-e438-bf77-b7fe-ebc8b0d8adcf@redhat.com>
In-Reply-To: <080cf9eb-e438-bf77-b7fe-ebc8b0d8adcf@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8a1114c-4d5d-430b-fda9-08d8b18586fa
x-ms-traffictypediagnostic: VI1PR0801MB1966:
x-microsoft-antispam-prvs: <VI1PR0801MB196615853371A1A9F915F33885D10@VI1PR0801MB1966.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kT4uhokNd5HAFNrQW0VHOn1KHOgL41A7ppzdornuRPwzIpCHmQ1x67SYfNI4HDKQHKVy+696axyiAlvY/HTSeyArSOujEb/bob+XgqpE1SFVPqC6c8Tl7uLW+dTp2YHFv7ZzaYsft298tiqKmn2fK1CTwA4USHX+OTK5UR8uynXSDa54DFAcQ1a49SS2BiVmEoAbiCZzWZCOKEVPpv1mwHXNnVpU10nUxVn7bvUF7OMGUgC2wB8C7wumXYpyDF3Ghfav5rIOuZZnskfMIccOOjEO5PKX4KVd+Tf017VEacDQb/qgHBN+Hoo4lvCHfM2Q3nwFx2fSdNsC2VQmu0uZ6fp43xhKy2hliD0EZJz+BMuOMYL+1kASnsz236pwufEALYtvWWwwkH8IwXmq+9R3HMGaMovx0tRkuYZ5aambb6qXaYhbXPeAKVs+Ncj38n4K8cVQn7W2jFDqNlwjh7gdpA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(66946007)(478600001)(5660300002)(91956017)(8936002)(76116006)(6506007)(53546011)(66476007)(66556008)(2906002)(71200400001)(45080400002)(33656002)(64756008)(26005)(52536014)(966005)(186003)(66446008)(55016002)(110136005)(19627405001)(316002)(86362001)(9686003)(8676002)(83380400001)(166002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?j1QY+8gRopFtyoVFAy8UtN8MbuLY3m/0RTs/kwWgR81Dobc3got4rxgcl661?=
 =?us-ascii?Q?YvrCExts4RgGGgTCxGx0qXVDsf0iiqxYbS/81uIQHHhF59YdDFKLQIBf9c8d?=
 =?us-ascii?Q?KhjEH+kIkhqzpp2vceKIoVblmp6jcWw2ovA26b4X9xXaGLG+7lCKixcDDHoN?=
 =?us-ascii?Q?G1LTP7GRGmeJA5/OBFHqgg/mNHfy2E7wpxL0mz+Sdkiy6aM62S24xHc0E3YY?=
 =?us-ascii?Q?QNK6sOupT6V/9VW6sanZ3GsZYhpvNmf9Do0Ua5ISFwFVf27p6DvU8N/oeGsk?=
 =?us-ascii?Q?1aOOrPdY8wvDxUIaKumj8TU06TvrPvrRps603Hf8pdzl3eUJRW2WwhwVtLtx?=
 =?us-ascii?Q?2QzGeKMuDjJO+2zgE/aGZUOJQRi0zpd60QxzpU/4+KIeLjyV0NRj+oRJfYrG?=
 =?us-ascii?Q?nOo5yrxhzbWECX6vVmvDu6fVjRtozMWoVoN9ZajuMMfZxwROnFcMePoGhU0S?=
 =?us-ascii?Q?rencS1wCPmmB8OnhS6hAYkEyYK1RI+cLX6VP/DSFQqYYJ5R0/YxatUUx6I7u?=
 =?us-ascii?Q?2UaTaStDUxV1//UxGtsM/VZNILaRANm4vFB3ebZTIOvoPBL9STFMY2m5S6tp?=
 =?us-ascii?Q?UUE/UBRoLxYI1LF3bUAzTtzC67FsxmypugjKPXRIv++YynDfv5tmKtWE3F2I?=
 =?us-ascii?Q?b0yWd8yGJFuhH5TY9rykMVCirZsO1ikj+Gh4AC7Y4L6Ws4kkue28cBt3R1hQ?=
 =?us-ascii?Q?5mE9qY/5Kf+TVAKcEiozGFMu24oqYVEyuisGksk+U39allJHxxzJN3lERn2F?=
 =?us-ascii?Q?caAIOO0NMfsRHgMZx9ZGgLUCtu/Z+UuZIi6e/sQA2wByBj3h2FH3PY4bOHLs?=
 =?us-ascii?Q?cZ8lcrYEzYlQRRH6Mo9T09tgMngzAqNlsIZmI5C804wTAXD48BJbTN4g1poc?=
 =?us-ascii?Q?aKl5esB6vim5lDhaISVG7MWfaCMgs+62DugFKJjFVJ2jqj3RUQ/JTVAk1cph?=
 =?us-ascii?Q?AxlG+/tAHyLnMPF7HeTmZQh4UvzF2lkkGyf5WpkbwjQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a1114c-4d5d-430b-fda9-08d8b18586fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2021 14:23:52.5738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KaAY4By9FWKRO5XR66F2mEXmdMrSAm/35v9UBFKPTDrBPi6XtV5vtdNf4DPlhyOSIzgUp79IoHOxKxFpZZLIQoq3nfqKDcOHHhxu5sa1oOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1966
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.92 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kwnFo-00AWx2-69
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] EXTERNAL: Re:  Discovery between VMs
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

   Thanks, Jon. I've forwarded your information request to the site. We did get things working over UDP (using the same interfaces), so we know IP is working and the netid configuration is ok. I still suspect that the VMware virtual network configuration is squashing non-IP traffic, so I'm focusing on that angle.

                                                          Gary Duzan


________________________________
From: Jon Maloy <jmaloy@redhat.com>
Sent: Monday, January 4, 2021 8:01 PM
To: Duzan, Gary D <Gary.Duzan@fisglobal.com>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: EXTERNAL: Re: [tipc-discussion] Discovery between VMs

CAUTION: This email originated from outside of the company. Do not click links or open attachments unless you recognize the sender and know the content is safe.



Hi Gary,
There are no known problems with connecting between VMs. As a matter of
fact, that is the way we run almost all the time.
Have you tried just to ping between the two VMs, using the same
interfaces? If that works they should definitely find each other.
If you can ping and they still don't discover each other, check the
cluster id (aka network id) by doing 'tipc node get netid' on both sides.
If the interfaces don't have IP addresses you could assign those
temporarily, just to check.

What do the commands 'tipc link list' and 'tipc bearer list'  show you?

BR
Jon Maloy

On 1/4/21 4:22 PM, Duzan, Gary D via tipc-discussion wrote:
>     I'm new here, and I have trouble getting to SourceForge through the corporate proxy, so forgive me if this is an FAQ. I'm trying to get TIPC working at a remote site between two VMs running Ubuntu 18.04 which at least appear to be on the same IP subnet. The node address is set to distinct values on both hosts (as 18.04 had other TIPC which required the manual config), and the broadcast bearer is there, but they don't appear to be discovering each other as the client gets a Host Unreachable trying to do a sendto(). I believe the VMs are running under VMware, but getting visibility on that could be tricky. The TIPC code works fine between physical hosts locally.
>
>     Are there known problems getting the ethernet broadcast between VMs working? I believe I have the proper incantation to use a UDP bearer for use as a fallback, but I'd rather not use it if I don't have to.
>
>     Thanks.
>
>                                                                   Gary Duzan
>
> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=04%7C01%7Cgary.duzan%40fisglobal.com%7C9ba4ec9a0b2647532b7d08d8b11569ba%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637454052818711634%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=wwrG5EjpLCNRDSis9XdZYSGbclFp8BA19M6z4MCU5SI%3D&amp;reserved=0
>

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
