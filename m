Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC173BF03
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jun 2023 21:41:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCmew-0002sH-28;
	Fri, 23 Jun 2023 19:41:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1qCmeu-0002sB-J3
 for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 19:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pr5YiGJYOWb3ew9BoiRnEePlSQL2up/KPasdWOhDYyI=; b=daSpWpRRykpFW8juTFBjXXFbUL
 W68CMxJ3ulXO1r1ScIbUzrtTqKJL7Oh3Js4gWyKpJ0ljAvu+QKv8eCeAMWFc0QI7aOQxo5lYEZnfE
 wmQu3JGpsJZ31EjIYSKF5QKEgU76x55yvvy+kG2X8lG/n6EJnnQZRqk5sy6I8DvQeAq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pr5YiGJYOWb3ew9BoiRnEePlSQL2up/KPasdWOhDYyI=; b=GUvYm0ZbrJVufgnr+V6VOWF1XJ
 xUooTT+20y3UZuIVk7t0MOouz6hio51M4TdOQn3eJ9cdLswv8wk+OndbzY+uQ4zPIa630uiAZ8FQ2
 UTHKC2rj8Lu2K8RWF/ejFYgtSqWw5iA9Z5uztnd5OtTPZpmKA5p/yM2rVUYqxnhBWPyM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCmeq-00Ce9c-If for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 19:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687549278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pr5YiGJYOWb3ew9BoiRnEePlSQL2up/KPasdWOhDYyI=;
 b=TYuq4uSvX7jpnU4qhuJrKfkWhb8dEz2j3BQK6jgOL6BVq9B+sd5y5yUSQdgSDTMwutykji
 +1djh6i0mARfayw9G3+zfUWV/h6heu1xceCd3jZuG+mr0MDnbFhwidUGRpPjujx7x3153k
 HL6m6Uc3bjTJGpv0R+oUD6NCnCogZVA=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-cJC5n9BCMxORsb7SVp3f7A-1; Fri, 23 Jun 2023 15:41:17 -0400
X-MC-Unique: cJC5n9BCMxORsb7SVp3f7A-1
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-3fdec20d4d8so14430241cf.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jun 2023 12:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687549276; x=1690141276;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pr5YiGJYOWb3ew9BoiRnEePlSQL2up/KPasdWOhDYyI=;
 b=FS/o4tGShVTx8oA20gAWax0FCUgLFyKIeFSVOvV38SMT1Q138mRHIAShfarS+niZWl
 Uffx+xmvsK5NYBZFag+vLLjVAeDIVARhAzaAW4M+U+fyu32zzKQ22XdP6LAFxkXppZUA
 SyIA0Lv6jOI5DthcbnYetlCSdhxLOGxoUEzb+an8059Rc3yylbynKFeixU+E0oGtgZtA
 aXqWhMYkM0yGQEjkExt4JbeEqN+xMFSkOweTyUzmgwMF1Z+u5lVVFvpl8bFXQIFCaaIb
 4cesY4qDJwSktjA3A6Y2k405ZtfM6Tzxv3gIxd0yZWmcIxQKkOZcDFZMqDh5JFRk8IED
 y26Q==
X-Gm-Message-State: AC+VfDwVuf7+bvmLFUUReVqQNKZYfUcC/5a5vPEDvetSY2CCqcoiH0qn
 VvrLNKC4o33aT2PKKeIQqGpqsWs3T0znAOT5NBc/Kvns5UDEWL5E88DLp+xeB1bIeWDC0I2VgCh
 sGeIeE4D+lfOc2evhRfxmUmzpHjekMOdUNOYPcxav7YV2ASWPNZ5+IBjW43HgnL2o/iyERWQ2FM
 YC9zFKvR7+Cpyby/GkRw==
X-Received: by 2002:a05:622a:5d2:b0:400:8580:1025 with SMTP id
 d18-20020a05622a05d200b0040085801025mr5425597qtb.2.1687549276481; 
 Fri, 23 Jun 2023 12:41:16 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4ZqqiXs4Ifl4l5uybmtTmmE9vk93ppVWl6wIesQjbshp7m+bMonwEXdj3GwexxQ9AyHxvupQ==
X-Received: by 2002:a05:622a:5d2:b0:400:8580:1025 with SMTP id
 d18-20020a05622a05d200b0040085801025mr5425573qtb.2.1687549276175; 
 Fri, 23 Jun 2023 12:41:16 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 cd14-20020a05622a418e00b003f4fa14decbsm5193739qtb.52.2023.06.23.12.41.15
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jun 2023 12:41:15 -0700 (PDT)
Message-ID: <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
Date: Fri, 23 Jun 2023 15:41:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: tipc-discussion@lists.sourceforge.net
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-06-22 09:30, Rune Torgersen wrote: > I can easily
 make it happen with known service addresses too. > > We have shortlived
 processes
 that does a query: > > Open 226 1 > Send query to 226 2. > 2 [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qCmeq-00Ce9c-If
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 2023-06-22 09:30, Rune Torgersen wrote:
> I can easily make it happen with known service addresses too.
>
> We have shortlived processes that does a query:
>
> Open 226 1
> Send query to 226 2.
> 226 2 sends response back to 226 1. - Message gets dropped.

It is obviously a timing issue, - an unintended side effect of moving 
the name table updates over to using the multicast channel.
Is there any reason why you don't use the received messages original 
socket address instead of its service address?
If you do that, at least for the first response message, you should be good.

I think there was also added a command to force the name table updates 
back to the unicast channel, but I don't remember
from the top of my head how it was done. Maybe Tung can fill in here?

///jon

>
> And again, from kernels 2.6.32 (Tipc 1.7.4) to Kernel 4.15, this never failed. Now I can make it fail every 2-5 queries.
>
> Adding a call to the topology server to query to see if a socket you _know_ is open (because you just got a message from it) to send a message back is adding a lot of unnecessary overhead.
>
>
> From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: Thursday, June 22, 2023 4:39 AM
> To: Rune Torgersen <runet@innovsys.com>; tipc-discussion@lists.sourceforge.net
> Subject: Re: TIPC out-of-order publish message
>
> This email originated from outside Innovative Systems. Do not click links or open attachments unless you recognize the sender and know the content is safe.
>
>> Also, since the publish and unicast is not guaranteed in order, should not reception of a unicast data message before a publish update the publish table on the receiving end so you can expect to reply back immediately.
> No, receiving of user data messages does not update the naming table. It is done via the protocol's internal published messages.
>
>> Take UDP as the other datagram protocol. You are expected to be able to send back a reply to the sending socket immediately upon reception of a message, as by receiving it you know the farend is up.
> The same thing for TIPC if you send back your messages using  known service.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
