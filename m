Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1236E739D30
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jun 2023 11:33:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCGgr-0005C3-8V;
	Thu, 22 Jun 2023 09:33:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1qCGgp-0005Bx-DL
 for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 09:33:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NTeRaaRWOOuQWcPd2NHUh5UaGk4AomE6MSvfNHImsgY=; b=FlMutNMP8eZ2YRpnClcP5B/IFH
 DEQsoBCNHXoL04TLPAkt41bMx9e+GOFa2r+k2tRmx09QnjG1XFXmmKukmbKSo6xfFM/VwXayzLCQM
 cQr3eCBHPd6h6k/0ZAhFwLXIf8QI+7pJDIE1aSgq8oCv1KuuIUfVBTy41FZfxloztq5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NTeRaaRWOOuQWcPd2NHUh5UaGk4AomE6MSvfNHImsgY=; b=OodBtDI13Ete8mnPf0ikwVXRUd
 BHUjcasAwTpVYX7fW9mZctXEbBoBh8ybaIsSAMWxt05BB4BIUQtXfbgzl/6PtqtWAfLYprLuDIw06
 jeSSwfb+dKyMnt4mE8itZ1BvwhPnf3MH98HpKNN8FA6Rl0t4vBFFzPbuAbAGSTPrWnAQ=;
Received: from mail-am7eur03on2107.outbound.protection.outlook.com
 ([40.107.105.107] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCGgf-0003Yu-29 for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 09:33:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXcVVIrzLmtVMLxHz+krcqCKnVmUbnjMxkXDKB1JLd3eA+KE4jMMjk8Flh6o04mkR4pD6k+i6mQFgmMvbjGDgB57+ofhLNHnbBEQFpetSxYD6t9W9W4t63y/R2S5GN2DXvn6+63VB0ujjfCVa7ePQp0fUzJh4o66j8LV07xyO3J1WJJg/wAcwvX5+lFTzDv9NyTdnXbGihf0I3DtUF84YPguWe+cXzmCxFYCoXk0biCdVGIDepTOKTZ/HnHJu0pbavecYNbwUFlGw3SEdCK58xSb31prjZL0dAMYfihU+8wUVFKJFcV12WNIcZUEvQ+ACUb2jeS+l6VCcGmwbJmLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTeRaaRWOOuQWcPd2NHUh5UaGk4AomE6MSvfNHImsgY=;
 b=Q6lpXwiB60mGPyv6ay5cy6O9fHvo5/9tzjwyU+2/kUEj6r/7yAaiUrict8T4C9JLeMjhXH2+9f9LeNEhpps6nGw7LWRi7F/fgDTBd/gpRYJrN7FIidwsxIIbdAUjnGQNmQ6JKrQM1trWMnrPKzSsLYa29Rm1sZCviKLRdnjN6xcSs+y2JzPe0gHyjEG3MZhRQ3SEnA8R4N3yXsO6oQTAL1u79fP4OqltvZIg5m/eZV6E0pPW4RcFvYXO+zHszstKvf2EtN6Jc0E+CmpN0sFfy0yaKnzKiQ0SzU+u6CWBkvQ+ey5jBGr8AV4d7lzEyUlKddcxrVNLLgZTiVWxAMY12w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTeRaaRWOOuQWcPd2NHUh5UaGk4AomE6MSvfNHImsgY=;
 b=tSbpvLOP3BCbGHMkE5b+S215qRkN2Ojnrv9zQOngKfjm8A7nxI188kbtVWpCmzAqh0+zcireUnuE1lfMRSukamhMVEY8/JpGpomgZKW2WfVHvO5Fv6KfO8vQGQJDdexUUPEg3K3IXcR9ilZgbYX165fKFfYOm7x7kLBfifnWMNY=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM7PR05MB6680.eurprd05.prod.outlook.com (2603:10a6:20b:141::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 09:33:01 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3%7]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 09:33:00 +0000
To: Rune Torgersen <runet@innovsys.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAKnkxcA==
Date: Thu, 22 Jun 2023 09:33:00 +0000
Message-ID: <DB9PR05MB907830F6439F71E6317C6E108822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM7PR05MB6680:EE_
x-ms-office365-filtering-correlation-id: 88200326-9e54-4d0a-0c77-08db7303abde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EuPlvCjQK+im0BxTYDsPjbgj9b80FkQxp3f1/q4VXykHT2gB95l0HI0qm5pULd6ISInCFj5U27PGd0euM3Ag3tlCIYJ8+tlOY0JGU3IKvSgXtjtZe7E3IiNthMBpD9aJNLd//kqRqLDScl/7l59V4Jr52jtQzlxaj4YEIHkT7TebKLEvh5UqzFrQIZ0ERMAEXWWN0hl8sX8WgkJsId1CMTdKDGGim7Hg/UtJvXU3Nvp9pBeHVNQgMgwjPh5VmkxGf8ujOr+GgJ7okw26l0JuVa9AgwW8u1CNLBXyW/bsgQtNdOFOo3vdiTbV4AnrmcJJGqh3PndwmlEJlCBvmHFJxePvxX53K4JqpA1ws7KmCnyBgSRyTXtdzdtrJc6CzJVIbS+AzfHEIIZNdRLPE4XoIeFdRWXiQnoyJjtDvluUM4DyxP4euuVMMrH1n6XAjNlsbXlO+rXGrvNGK9mJEXJsIpa4sVUdYhdsCi2BLSokXTe3NJuwoChPJWKj+WD40di78+q2Hu3FTQBWOA/KMXp0Ji9/yOJ0vb0QSGyMuFYOfZ9Uv29IyKvGmercY4SeurO8TXYJCosUDs1qPhDBWxwHoUbzUh8iqouCzg4TXg0J88jncXYeVpWfsjDVmuDaCmxJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(366004)(136003)(39840400004)(346002)(396003)(451199021)(15650500001)(41300700001)(186003)(91956017)(66476007)(66556008)(66946007)(76116006)(110136005)(52536014)(5660300002)(86362001)(7696005)(71200400001)(2906002)(19627405001)(38070700005)(8676002)(8936002)(6506007)(122000001)(9686003)(26005)(83380400001)(53546011)(55016003)(66446008)(33656002)(64756008)(38100700002)(316002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?prlCXFdExoMfX08tFXNqyqPqtqx75yEJFHhiYL8N9ZR8NvOjz3SNmTjz75?=
 =?iso-8859-1?Q?kBfIGYqGX/+m38QFQjGoj9EOBFScjQUOBjDH7ongW/IxsKUv8dA3lLKHSt?=
 =?iso-8859-1?Q?niGQYRgyJIQFg6UoqzNfEi9EaHi+0U+E93JZ2UT7Xixw16vseONOyLvBMr?=
 =?iso-8859-1?Q?x0toR/6aJJmjwPPS8HGmJNT2v1ehCZq6Vz2rGMiLv9UEcePNFAp/k0v6l1?=
 =?iso-8859-1?Q?LZhkZotDzAsmteTuGdi7B3I/HPbXjJv2dYzjprLhamu7+SzhqKzTbEI8LG?=
 =?iso-8859-1?Q?L6S9A6BCPvA3BFSOAfYjofnTkakz5aJ/s5rYt7XxFDWgqF3lf4BBwHvfvk?=
 =?iso-8859-1?Q?CJs9NJuLaacyquUfTjQuEw7zkAWZyg5d0YzEiN8rnZDSe7FK4KbAKriDza?=
 =?iso-8859-1?Q?vCn4+qjAA4FOc/SiKim3y5As7ziZe2mRNmaRyDL7A9en4k/UNj6jM3u78X?=
 =?iso-8859-1?Q?L6M8bmkhsR2i7d6yXAD6DLGAIbRj7uQmF2VrFp0h7uFNKHiJC47uYRkVqe?=
 =?iso-8859-1?Q?Ayj+q9N2fPA9Ddti5Xfp9U0X2uieJkyKTeyoCVqEo5K6QcsazdS1qobeA8?=
 =?iso-8859-1?Q?nR8FGS3kYPn9WPkMtUbXFnRb+cyv24jPMgN/CITe72hTav3h5h2HjDYuR+?=
 =?iso-8859-1?Q?YvVLZ7c5qFWcQSpnGLNyGmmqw9bl0FF1m41lKEk7fBsHYQt4Lpw1Hx5tSi?=
 =?iso-8859-1?Q?CnH8GTFB3U1ohbWk5lMmq2Em7sj5dV2FfhXF0j7CeAksax6FByxOF3PUSy?=
 =?iso-8859-1?Q?aOz+AVhT5P0o3VbojsrNe6ur9kyd0etHJPEx7kOCzCujZSDGcM80vDSwZ4?=
 =?iso-8859-1?Q?Of61p+uXFZ1XQuVC7468xCV+AKEM8TXwgaD2DomXHEGEN9a9qhZPLPylQv?=
 =?iso-8859-1?Q?YSDrJ6c2/ApNneBCz7Rl+vsdUIo5R6UyRAWfi4cRGQKpbetCSQdbyAPUhN?=
 =?iso-8859-1?Q?N+fmxyDsl1jbW0rJaOzjvuF4b+w4+rDnKPcV16Rap63XXvXdqzSqAIbwJd?=
 =?iso-8859-1?Q?yp8cGwaHw4tm6KTb1DnFfxr8Gi4X7wG+UEzPuWCzm363fSTyXxSod05LFp?=
 =?iso-8859-1?Q?p4i0jSEPIpSrv+gCo3hmNYsc5Cv3tsK6HqPN6cCzPYnCmu9BxZIz5fvFW6?=
 =?iso-8859-1?Q?927Hyr2r88H+ZUAjgx+qFXU5yIcqB1Z9z6NJgsbqfbTI9IJkq7LOwrBg5L?=
 =?iso-8859-1?Q?54IwrBceeH/F9kAOtBOD0Qbw0k5Irt4vzEqwYJAW+1dlhebQylRGSJrqCo?=
 =?iso-8859-1?Q?F0mJCdhHIYJ972eKU3AXgu1ZOKl3JhwReOuWEuY/T+fsOfpRVk29Fr1Ron?=
 =?iso-8859-1?Q?Fjeqpj776pAlY6c/TjPcbc4DVQWH9Q4hGFW8zX8e0+K60pLpMAIi5GlMMh?=
 =?iso-8859-1?Q?IxoQrHNJY0PCMw2YfmDwIpjP6PZXW4lHtBp8WZVg6i0mqc/i4DA3NGencx?=
 =?iso-8859-1?Q?7YVRywiZ8yoIUdWHkKFgR388fsDAZ2VyZFQUXkc0JaB/cIjwcM/XS6a3sT?=
 =?iso-8859-1?Q?lgY2cVv+a8e1Jor/5gyN1RFVkzkrgdZ/k/FiEV5zDtVyRIbKOFnfH18mwa?=
 =?iso-8859-1?Q?YkWO0sqUHWp6sDyD6FZTyUalxsHy1MF/8fy974xJIQpdv1C4K6Q1zIMcCB?=
 =?iso-8859-1?Q?eSdMObJVoK87Z7tjgaNfAohgs8NjRXH+Apgoddbx6IQp4pbc0+AFMB2w?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88200326-9e54-4d0a-0c77-08db7303abde
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 09:33:00.8522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V8X/I6pIITz/uuS9EQsCAviV4fNn3ZNpVgZnz8XlEvufSKNaKxjaqrjZVv/VBxJa8JsCXblI2Q3YIgKlDMdeKgZ1vieq79TRl7Wym4jP5+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR05MB6680
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > if we send a message from a newly opened tipc socket to
 a different node, we cannot send back a reply immediately, as the tipc stack
 will silently throw away the message because the publish has not [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.105.107 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.105.107 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qCGgf-0003Yu-29
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

>  if we send a message from a newly opened tipc socket to a different node, we cannot send back a reply immediately, as the tipc stack will silently throw away the message because the publish has not yet been received.
You can always send the message back if communication is being performed on the known service (in your example: type 226, instance 2). If you send a message back using new service (type 226, instance addr) which is not known yet by the sender, of course TIPC will drop this message.


> We have a workaround right now by querying the topologyserver before each send, but that slows down everthing by several orders of magnitude.

This is the right thing to do.





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
