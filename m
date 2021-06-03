Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E239A2ED
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Jun 2021 16:20:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1looCx-0001Eh-2g; Thu, 03 Jun 2021 14:20:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1looCh-0001DP-T4
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 14:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C2Vo4igLptAM/RizZhMyEpAer0cY9bz8B/Y78Qcz0RU=; b=PImc+6hUGLxrj5b13QQcT8wdj
 vLi6/ISpzWqn2s56PfbRPfb3Scq2IRg519J2nAyqOKOOtTVoM2Xnols7KgS7xa8RD8AP7HKSaFP5c
 YPrp8gW7Vy3xay9PG/JFfC6kvGJMECKy9OS8JWF++tzuLQASuXf9o0TzryEu+qyADCXxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:
 To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C2Vo4igLptAM/RizZhMyEpAer0cY9bz8B/Y78Qcz0RU=; b=Opzc4LOxyxOyNpGHI2Dxml1VUI
 To97hjnhX9YKoV3uItLXy5KrI2iH5d4/X2Ba9fS7oYBgDb3JPBOmCIvHHyROpVfr6BgKhAG8zV9lG
 YeUvlGBfXeVxx7DJGq6re4iwgWdsGhjJA3JHa91yFmXkSlhPXzyz7r64rGdKoA4Sryuc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1looCc-0005HT-AD
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 14:20:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622730001;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=C2Vo4igLptAM/RizZhMyEpAer0cY9bz8B/Y78Qcz0RU=;
 b=VeYTxyPFqLgXKhXIEtVzPQm0QQ+M1Voj0OIVBontcGgDbH9RleuvZ1XUm+oS3mO7KcsbUq
 A7oxQax6dGf66RltoTRkkMesjy1KrsMLE5zJP/XujDopC3JT6lnu/Zi8TArTqAnixoxU46
 mZmnEINCK9UwDF9PH7Plw/nDP8O23UA=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-VE6ximeuO02D5gKIQhChHg-1; Thu, 03 Jun 2021 10:19:58 -0400
X-MC-Unique: VE6ximeuO02D5gKIQhChHg-1
Received: by mail-qk1-f199.google.com with SMTP id
 i141-20020a379f930000b02902e94f6d938dso4430672qke.5
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 03 Jun 2021 07:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=CSo5WJ1ZG2JGVaFYjF5uLUghXhwoZol2Y2FdjZL5OIc=;
 b=Jzf9mR8LQEJXW4UFF0vvZH03khF5XmpBpIOMRunEc8iVN/+OlGBdHeT1awlyIuA4Hu
 APTyb+NN82F/7HNo7hLMYjN864yCOsKYuikdCQgoXhM7CKbDnRVBXt2qQWLKLmDxrIAx
 WNV8MlOZkOWaSdRSUy4JGaVUpajTUQ/rBKgiv5z9ATWMly2d+s3HWWIfLl1qL+liLtIK
 C+uZzqvU0IrIC/qe9BwWA8cnFo8/p0GAOgsSY9HPcHp1G6J4NvArfJF8Dwrl1QwIsiWW
 0UY2EXH13hQs/TryG+ctfuQcXOb7bW6ikZgoV3B7gDhRiXvqMrCXOZNRTh+HKqHIbb/6
 7Jhw==
X-Gm-Message-State: AOAM532ZPTCyE62G+MiRoXXVTHIah8frK/vCZuoE8lqZGx0YM3+pa4nA
 c+FKvNmlTs0yxWJkRq2M0iXrLLgmdQ0Gcmx02wKYRk6xhVNeqs49HK7EUSdnbEp5Z+qlYZtG+q5
 HFIJNdnCFlir+TmwBzi6iQXIIDtTiJc1Mk7rJkXptdF2wiLb3sirRZ2l9NMBtomBd8Aw58ReE4A
 lrTGCTQgGATQ==
X-Received: by 2002:ac8:5495:: with SMTP id h21mr138989qtq.236.1622729997913; 
 Thu, 03 Jun 2021 07:19:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxCKMMPEPZnrCxVmytWWvT6994msMx/+BnW/uoX47rxWB3/NhL1Ir/yFISm/vfZuV19Ubf5vA==
X-Received: by 2002:ac8:5495:: with SMTP id h21mr138965qtq.236.1622729997592; 
 Thu, 03 Jun 2021 07:19:57 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id z2sm1997513qkc.111.2021.06.03.07.19.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Jun 2021 07:19:57 -0700 (PDT)
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>, Xin Long <lucien.xin@gmail.com>
References: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
 <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>
 <a31bf399-7c8e-38c3-44df-c3ced7c55864@redhat.com>
 <VI1PR08MB41927531472FF499217E50B2853C9@VI1PR08MB4192.eurprd08.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d8cf99f9-1770-ba23-9f6b-34dc2a0e17d8@redhat.com>
Date: Thu, 3 Jun 2021 10:19:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <VI1PR08MB41927531472FF499217E50B2853C9@VI1PR08MB4192.eurprd08.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fisglobal.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1looCc-0005HT-AD
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/3/21 9:55 AM, Duzan, Gary D wrote:
>
>     Contrary to UDP vs TCP, TIPC is only one protocol, so you
>     cannot bind the same service type/instance to different socket types
>     without risking problems.
>     The SYN bit will prevent a connection from being established with a
>     socket of the wrong type, but it will not stop the binding table
>     lookup
>     from selecting such a socket, since it knows nothing about socket
>     types.
>     I am actually surprised that this works even on the non-Debian
>     machines.
>     Maybe the secondary lookup mechanism is saving the day.
>
>     This could of course be fixed without too much effort, but the
>     question
>     is if that is the right way to go. At least we would have to carefully
>     consider possible compatibility issues.
>
>     Would it be a problem for you to just choose different service
>     types/ranges?
>
>     ///jon
>
>
> =A0 =A0Interesting. So, accidents of implementation aside, you would =

> expect DGRAM, STREAM, and SEQPACKET sockets to be able to communicate =

> with each other? I'm not using SEQPACKET (yet), but it sounds like one =

> might be able to connect() between STREAM and SEQPACKET sockets today, =

> though presumably the way that send()s on the STREAM side get =

> "packetized" on the SEQPACKET end is not clearly defined. If this is =

> what is intended, I think some clarification in the documentation =

> would be helpful, as would testing to ensure expected behavior across =

> socket types. It is true that bringing TCP/UDP thinking to TIPC is =

> going to lead to errors, but it isn't going to be rare. If it is =

> straightforward to keep communication between different socket types =

> separate, then I suspect that would produce the least surprise.
>
> =A0 =A0As for my own project, logically I'm dealing with the same service =

> either way; it is only the DGRAM message size limit that is pushing =

> the STREAM fallback option. I could require a separate service type =

> for the STREAM implementation, but that is another piece of =

> configuration which I'd rather avoid, if practical. I expect I will =

> keep it the way I have it while I'm in experimental mode, as it seems =

> to be working as I expect on the target kernels, but I'll need to be =

> sure I'm on solid ground if we ever manage to get the thing to production.
>
> =A0 =A0Thanks.
>
> Gary Duzan
> FIS - GT.M Core
>
I can frankly admit that this is a problem we never came across before, =

and that we haven=B4t really spent much time considering this kind of issue=
s.
You are right that this needs to be at least clarified in the =

documentation.
But we should also run some internal tests to identify what is working =

and what is not, and then decide what is the correct approach.
Thank you for making us aware of this.

///jon

>
> ------------------------------------------------------------------------
> *From:* Jon Maloy <jmaloy@redhat.com>
> *Sent:* Wednesday, June 2, 2021 8:56 PM
> *To:* Xin Long <lucien.xin@gmail.com>; Duzan, Gary D =

> <Gary.Duzan@fisglobal.com>
> *Cc:* tipc-discussion@lists.sourceforge.net =

> <tipc-discussion@lists.sourceforge.net>
> *Subject:* EXTERNAL: Re: [tipc-discussion] DGRAM/STREAM Crossover on =

> Debian?
> CAUTION: This email originated from outside of the company. Do not =

> click links or open attachments unless you recognize the sender and =

> know the content is safe.
>
>
>
> On 6/2/21 4:14 PM, Xin Long wrote:
> > On Wed, May 26, 2021 at 11:38 AM Duzan, Gary D via tipc-discussion
> > <tipc-discussion@lists.sourceforge.net> wrote:
> >>=A0=A0=A0=A0 I'm in the process of enhancing a TIPC DGRAM-based RPC-ish =

> service to include TIPC STREAM transport for larger messages. To =

> simplify configuration, I have the server process(es) bind() the same =

> type/range for both DGRAM and STREAM sockets (poll()ing to see which =

> have incoming requests), then choose which to use on the client. This =

> seems to work on most of my Linux systems (RHEL-8, Ubuntu 20.04/21.04, =

> Fedora 34, Debian 11), but on my Debian 10 system (4.19.181-1 kernel) =

> I am seeing messages from a DGRAM client appearing on an accept()ed =

> STREAM socket on the server. I have confirmed that the client is not =

> sending anything on a STREAM socket, and the message received by the =

> server is formatted as a DGRAM message (without the message framing =

> header).
> > When you start two scoket on the server: DGRAM and STREAM, in the
> > client's nametable there will be 2 sockets with different portids:
> > # tipc nametable show
> > Type=A0=A0=A0=A0=A0=A0 Lower=A0=A0=A0=A0=A0 Upper=A0=A0=A0=A0=A0 Scope =
Port=A0=A0=A0=A0=A0=A0 Node
> > 18888=A0=A0=A0=A0=A0 17=A0=A0=A0=A0=A0=A0=A0=A0 17=A0=A0=A0=A0=A0=A0=A0=
=A0 cluster 4063960415
> > 18888=A0=A0=A0=A0=A0 17=A0=A0=A0=A0=A0=A0=A0=A0 17=A0=A0=A0=A0=A0=A0=A0=
=A0 cluster 1106254118
> >
> > When the client calls sendmsg()/connect() to send msg to the server,
> > it will choose one of them by the rule of "local, closest-first or
> > round-robin".
> > The client doesn't know if the peer is a DGRAM socket or STREAM
> > socket. In your case, it should go round-robin.
> >
> > Without this commit:
> >
> > commit 25b9221b959483f17c2964d0922869e16caa86b5
> > Author: Jon Maloy <jon.maloy@ericsson.com>
> > Date:=A0=A0 Fri Sep 28 20:23:21 2018 +0200
> >
> >=A0=A0=A0=A0=A0 tipc: add SYN bit to connection setup messages
> >
> > The SYN msg for STREAM is no different from the DATA msg for DGRAM.
> > that's what you're seeing in kernel-4.19
> >
> >>=A0=A0=A0=A0 Debian isn't a target platform for production, so I don't =
need =

> a specific fix, but it is still surprising and a bit disturbing. Was =

> this a known problem with the 4.19 kernel? Are there particular =

> reasons why using this pattern is a bad idea?
> > I think it may not work as expected if you create 2 different types of
> > TIPC sockets binding to the same address.
> > At least on the latest kernel, once the DGRAM client chooses the
> > STREAM socket, the DATA msg will be dropped.
> >
> > Thanks.
> Exactly. Contrary to UDP vs TCP, TIPC is only one protocol, so you
> cannot bind the same service type/instance to different socket types
> without risking problems.
> The SYN bit will prevent a connection from being established with a
> socket of the wrong type, but it will not stop the binding table lookup
> from selecting such a socket, since it knows nothing about socket types.
> I am actually surprised that this works even on the non-Debian machines.
> Maybe the secondary lookup mechanism is saving the day.
>
> This could of course be fixed without too much effort, but the question
> is if that is the right way to go. At least we would have to carefully
> consider possible compatibility issues.
>
> Would it be a problem for you to just choose different service =

> types/ranges?
>
> ///jon
>
> >
> >>=A0=A0=A0=A0 Thanks.
> >>
> >> Gary Duzan
> >> FIS - GT.M Core
> >>
> >> The information contained in this message is proprietary and/or =

> confidential. If you are not the intended recipient, please: (i) =

> delete the message and all copies; (ii) do not disclose, distribute or =

> use the message in any manner; and (iii) notify the sender =

> immediately. In addition, please be aware that any message addressed =

> to our domain is subject to archiving and review by persons other than =

> the intended recipient. Thank you.
> >>
> >> _______________________________________________
> >> tipc-discussion mailing list
> >> tipc-discussion@lists.sourceforge.net
> >> =

> https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists=
.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=3D04%7C01%7C=
gary.duzan%40fisglobal.com%7C68e57e4f23b548f804b008d9262a7be5%7Ce3ff91d834c=
84b15a0b418910a6ac575%7C0%7C0%7C637582786180071891%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&a=
mp;sdata=3DVNEWWSJ4euG3QutIj3MXmPpOI56vPasJtcdFYM61ToU%3D&amp;reserved=3D0 =

> <https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist=
s.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&amp;data=3D04%7C01%7=
Cgary.duzan%40fisglobal.com%7C68e57e4f23b548f804b008d9262a7be5%7Ce3ff91d834=
c84b15a0b418910a6ac575%7C0%7C0%7C637582786180071891%7CUnknown%7CTWFpbGZsb3d=
8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&=
amp;sdata=3DVNEWWSJ4euG3QutIj3MXmPpOI56vPasJtcdFYM61ToU%3D&amp;reserved=3D0>
>
> The information contained in this message is proprietary and/or =

> confidential. If you are not the intended recipient, please: (i) =

> delete the message and all copies; (ii) do not disclose, distribute or =

> use the message in any manner; and (iii) notify the sender =

> immediately. In addition, please be aware that any message addressed =

> to our domain is subject to archiving and review by persons other than =

> the intended recipient. Thank you. =



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
